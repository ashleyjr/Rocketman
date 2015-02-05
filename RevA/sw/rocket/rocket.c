#define F_CPU			16000000UL 	// Fuse for internal oscillator at 16MHz

#include <avr/io.h>
#include <util/delay.h>

#define LED_ON				   PORTB |=  (1<<PORTB5)
#define LED_OFF				PORTB &= ~(1<<PORTB5)

#define USART_BAUDRATE     9600
#define BAUD_PRESCALE      (((F_CPU / (USART_BAUDRATE * 16UL))) - 1)

int tx(char c);
int rx();

int main (void){

   char buff;

	/* set up the IO pins */

	DDRB	|= (1<<DDB5);						         // PB5 As Output pin
	PORTB	|= (1<<DDB5);						         // PB5 Activate internal pullUp resistor

	DDRB	&= ~(1<<DDB7);						         // PB7 As Input pin
	PORTB	|= 1<<DDB7;							         // PB7 Activate internal pullUp resistor

      
   UCSR0B   = (1 << RXEN0)  | (1 << TXEN0);     // turn on the transmission and reception circuitry
   UCSR0C   = (1 << UCSZ00) | (1 << UCSZ01);    // use 8-bit character sizes

   UBRR0H   = (BAUD_PRESCALE >> 8);             // upper 8-bits of baud rate value into high byte of UBRR register
   UBRR0L   = BAUD_PRESCALE;                    // lower 8-bits of baud rate value into low byte of UBRR register


   /* Main routine */
   
   while(1){
      if((UCSR0A & (1 << RXC0))){
         LED_ON;
         rx();
         _delay_ms (100);      
      }else{
         LED_OFF;
      }
      
   }
}

int tx(char c){
   if (c == '\n')                         // handle linefeed - carriage return
      tx('\r');

   while ((UCSR0A & (1 << UDRE0)) == 0);  // Do nothing until UDR is ready for more data to be written to it
   UDR0 = c;                              // transmit character
   return (0);                            // transmit success
}


int rx(){
   if ((UCSR0A & (1 << RXC0)) == 0) 
      return (1);                         // No character available, so we return error

   return (UDR0);                         // Return the received character
}
