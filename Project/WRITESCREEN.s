SSISR		 		   	EQU		0x4000800C
SSIDR				   	EQU		0x40008008
GPIO_PORTA_DATA        	EQU		0x400043FC
MEMORY_ADDRESS		   	EQU		0x20000100


;LABEL		DIRECTIVE	VALUE		COMMENT
						AREA    Routines, READONLY, CODE
						THUMB
						EXTERN  WRITE
						EXPORT 	WRITESCREEN



;LABEL		DIRECTIVE	VALUE		COMMENT

WRITESCREEN				PUSH	{LR}
						PUSH 	{R1,R2,R3,R4}
						
						LDR		R6,=MEMORY_ADDRESS
						MOV		R5, #0x86		;STARTING X COORDINATE
						MOV		R4, #64			;COUNTER FOR X
LOOP2					LDR 	R1,=GPIO_PORTA_DATA
						LDR		R0,[R1]
						BIC		R0,#0x40
						STR		R0,[R1]

						MOV 	R2, #0x22	; vertical mode
						BL		WRITE
			
						MOV 	R2, #0x41		;STARTING Y COORDINATE
						BL		WRITE
						MOV		R2, R5
						BL  	WRITE
						
						LDR 	R1,=GPIO_PORTA_DATA			
						LDR 	R0,[R1]
						ORR		R0,#0x40
						STR		R0,[R1]						
						LDRB 	R0,[R6]
						
						MOV		R3,#4	;COUNTER FOR Y
LOOP					MOV 	R2, R0
						BL		WRITE
						ADD		R6,#1
						LDRB	R0,[R6]
						SUBS	R3,#1
						BNE		LOOP
						ADD		R5,#1		
						SUBS	R4,#1
						BNE		LOOP2			
						POP 	{R1,R2,R3,R4}
						POP 	{LR}
						BX		LR
						ALIGN
						END
			