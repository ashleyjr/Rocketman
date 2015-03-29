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


volatile uint8_t in_low,in_high;
volatile int32_t max_high,high,max_low,low;
volatile uint8_t state;

// timer0 overflw
ISR(TIMER1_COMPA_vect) {
   if(FREQ){
      low++;
   }else{
      high++;
   } 
}


// Main routine ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

int main (void){
	
   char buffer[20]; 

   uint32_t i,low_last,high_last;
   

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
   //i2c_init();
   uart_init();

   // Main
 
   //TCCR1A = (1 << WGM10) | (1 << COM0A1);
   //TCCR1B = (1 << CS20) | (1 << CS00) | (1 << WGM01);
   //DDRB = 0xFF;
   //OCR1A=150;


   TCCR1A = 0;     // set entire TCCR1A register to 0
   TCCR1B = 0;     // same for TCCR1B
   
   OCR1A = 4000;
   // turn on CTC mode:
   TCCR1B |= (1 << WGM12);
   // no prescaler`
   TCCR1B |= (1 << CS10);
   // enable timer compare interrupt:
   TIMSK1 |= (1 << OCIE1A);
   
   //TIMSK0=(1<<TOIE0);
   //// set timer0 counter initial value to 0
   //TCNT0=0x00;
   //// // start timer0 with /64 prescaler
   //TCCR0B = (1<<CS00);
   sei();

   while(1){
     
      PORTB = 0xFF;
      _delay_ms(4);
      PORTB = 0x00; 
      _delay_ms(1);

       

      //if(high){ 
         
         low_last = low - low_last;
         send_string("\n\rLow: ");
         itoa(low_last >> 2, buffer, 10);
         send_string(buffer);
         send_string("us      ");
         low_last = low;

      //   period = high;
      //}
      //if(low){
         
         high_last = high - high_last;
         send_string("\t\tHigh: ");
         itoa(high_last >> 2, buffer, 10);
         send_string(buffer);
         send_string("us");
         high_last = high;
      //
      //   period += low;
      //   send_string("\n\rPeriod: ");
      //   itoa(period, buffer, 10);
      //   send_string(buffer);
      //   send_string("us");
      //   period = 0;
      //   _delay_ms(500); 
      //}
      


      // SWITCH 
      //if(PINB & (1<<PB7) ){
      //   _delay_us(50);
      //   TX_ON;
      //   _delay_us(50);
      //   TX_OFF;
      //}else{
      //   _delay_us(10);
      //   TX_ON;
      //   _delay_us(90);
      //   TX_OFF;
      //}

      //i2c_start();
      //uart_tx(uart_rx());    
      //i2c_write(0xD9);
      //uart_tx('D');
      //i2c_write(0x75);
      //uart_tx('7');
      //uart_tx(i2c_read_ack());
      //uart_tx('R');
      //i2c_stop();
      //uart_tx('s');
      
      //if((UCSR0A & (1 << RXC0))){
      //   LED_ON;
      //   uart_tx(uart_rx());
      //   _delay_ms (100);      
      //}else{
      //   LED_OFF;
      //}
      
   }
}





// I2C ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////

void i2c_init(void){
   //set SCL to 400kHz
   TWSR = 0x00;
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
