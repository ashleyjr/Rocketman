#define F_CPU			16000000UL 	// Fuse for internal oscillator at 16MHz

#include <avr/io.h>
#include <util/delay.h>
#include <stdlib.h>
#include <avr/interrupt.h>


#define LED_ON				   PORTB |=  (1<<PORTB5)
#define LED_OFF				PORTB &= ~(1<<PORTB5)

#define TX_ON              PORTC |=  (1<<PORTC0)
#define TX_OFF             PORTC &= ~(1<<PORTC0)

#define RX_ON              PIND & (1<<PD2) 
#define SW_ON              PINB & (1<<PB7)
#define FREQ               PIND & (1<<PD7)

#define USART_BAUDRATE     9600
#define BAUD_PRESCALE      (((F_CPU / (USART_BAUDRATE * 16UL))) - 1)



// Prototypes ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


void i2c_init(void);
void i2c_start(void);
void i2c_stop(void);
void i2c_write(uint8_t data);
uint8_t i2c_read_ack(void);
uint8_t i2c_read_nack(void);
uint8_t i2c_get_status(void);


void uart_init(void);
void uart_tx(uint8_t data);
uint8_t uart_rx(void);

void send_string(char s[]){
   int i =0;        
   while (s[i] != 0x00){
      uart_tx(s[i]);
      i++;
   }
}





// Main routine ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

int main (void){
	
   char buffer[20]; 
   uint8_t data;
   uint8_t i,low_last,high_last;
   

   // set up the IO pins

	DDRB	|= (1<<DDB5);						         // PB5 As Output pin
	PORTB	|= (1<<DDB5);						         // PB5 Activate internal pullUp resistor

	DDRB	&= ~(1<<DDB7);						         // PB7 As Input pin
	PORTB	|= (1<<DDB7);							         // PB7 Activate internal pullUp resistor

   DDRC  |= (1<<DDC0);
   PORTC |= (1<<DDC0);

   DDRD  &= ~(1<<DDD2);
   PORTD |= (1<<DDD2);

   DDRD  &= ~(1<<DDD7);
   PORTD |= (1<<DDD7);


	DDRB	|= (1<<DDB1);						         // PB5 As Output pin
	PORTB	|= (1<<DDB1);						         // PB5 Activate internal pullUp resistor

 // Setup comms
 i2c_init();
 uart_init();
   
 i2c_start();
 i2c_write(0xD2);
   i2c_write(0x6B);
   i2c_write(0x00);
 i2c_stop();

 while(1){
      send_string("\n\rStart");
      _delay_ms(100); 
      for(i=0x3B;i<=0x40;i++){
         _delay_ms(50);
         i2c_start();
         i2c_write(0xD2);
         i2c_write(i);
         i2c_start();
         i2c_write(0xD3);
         data = i2c_read_nack();
         i2c_stop();
         sprintf(buffer,"%0x",i);
         send_string("\n\r0x");
         send_string(buffer);
         send_string(" : "); 
         sprintf(buffer,"%0x",data);
         send_string(buffer);
      }
   }

}





// I2C ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void i2c_init(void){
   //set SCL to 400kHz
   TWSR = 0x02;
   TWBR = 0x0C;
   //enable TWI
   TWCR = (1<<TWEN);
}

void i2c_start(void){
   TWCR = (1<<TWINT)|(1<<TWSTA)|(1<<TWEN);
   while ((TWCR & (1<<TWINT)) == 0);
}

void i2c_stop(void){
   TWCR = (1<<TWINT)|(1<<TWSTO)|(1<<TWEN);
}

void i2c_write(uint8_t data){
   TWDR = data;
   TWCR = (1<<TWINT)|(1<<TWEN);
   while ((TWCR & (1<<TWINT)) == 0);
}

uint8_t i2c_read_ack(void){
   uint8_t count;
   TWCR = (1<<TWINT)|(1<<TWEN)|(1<<TWEA);
   count = 0;
   while (((TWCR & (1<<TWINT)) == 0) && (count < 100) ){
      uart_tx('W');
      count++;
   };
   return TWDR;
}

//read byte with NACK
uint8_t i2c_read_nack(void){
   TWCR = (1<<TWINT)|(1<<TWEN);
   while ((TWCR & (1<<TWINT)) == 0);
   return TWDR;
}

uint8_t i2c_get_status(void){
   uint8_t status;
   //mask status
   status = TWSR & 0xF8;
   return status;
}







// UART ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void uart_init(void){
   UCSR0B   = (1 << RXEN0)  | (1 << TXEN0);     // turn on the transmission and reception circuitry
   UCSR0C   = (1 << UCSZ00) | (1 << UCSZ01);    // use 8-bit character sizes

   UBRR0H   = (BAUD_PRESCALE >> 8);             // upper 8-bits of baud rate value into high byte of UBRR register
   UBRR0L   = BAUD_PRESCALE;                    // lower 8-bits of baud rate value into low byte of UBRR register
}


void uart_tx(uint8_t data){
   if (data == '\n')                            // handle linefeed - carriage return
      uart_tx('\r');
   while ((UCSR0A & (1 << UDRE0)) == 0);        // Do nothing until UDR is ready for more data to be written to it
   UDR0 = data;                                 // transmit character
}

uint8_t uart_rx(){
   if ((UCSR0A & (1 << RXC0)) == 0) 
      return (1);                               // No character available, so we return error
   return (UDR0);                               // Return the received character
}
