		#include<p18f4550.inc>
		
		org	0x00
		goto	start
		org	0x08
		retfie
		org	0x18
		retfie

;*****************************
;MAIN PROGRAM
;*****************************

configure  clrf TRISD,A
		   clrf PORTD,A
		   return

toggle	   movlw B'00101010'
		   xorwf PORTD,F,A
		   return

increase	incf PORTD,F,A
			return

start	call configure
		call toggle
		call increase
		nop
		end

		