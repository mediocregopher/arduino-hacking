	.file	"wiring_pulse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.pulseIn,"ax",@progbits
.global	pulseIn
	.type	pulseIn, @function
pulseIn:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 12) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 12 */
.L__stack_usage = 12
	ldi r25,0
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_bit_mask_PGM))
	sbci r31,hi8(-(digital_pin_to_bit_mask_PGM))
/* #APP */
 ;  37 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r29, Z
	
 ;  0 "" 2
/* #NOAPP */
	movw r30,r24
	subi r30,lo8(-(digital_pin_to_port_PGM))
	sbci r31,hi8(-(digital_pin_to_port_PGM))
/* #APP */
 ;  38 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r23, Z
	
 ;  0 "" 2
/* #NOAPP */
	cpse r22,__zero_reg__
	rjmp .L11
	ldi r28,0
	rjmp .L2
.L11:
	mov r28,r29
.L2:
	movw r26,r20
	movw r24,r18
	andi r27,15
	mov r22,r23
	ldi r23,0
	lsl r22
	rol r23
	subi r22,lo8(-(port_to_input_PGM))
	sbci r23,hi8(-(port_to_input_PGM))
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	movw r10,r8
	movw r30,r22
/* #APP */
 ;  48 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r16, Z+
	lpm r17, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L3
.L5:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r12
	add r12,r8
	adc r13,r9
	adc r14,r10
	adc r15,r11
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	brne .+2
	rjmp .L14
	movw r8,r12
	movw r10,r14
.L3:
	movw r30,r16
	ld r30,Z
	and r30,r29
	cp r30,r28
	breq .L5
	rjmp .L15
.L8:
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	inc r12
	add r12,r8
	adc r13,r9
	adc r14,r10
	adc r15,r11
	cp r8,r24
	cpc r9,r25
	cpc r10,r26
	cpc r11,r27
	breq .L14
	movw r8,r12
	movw r10,r14
	rjmp .L16
.L15:
	movw r30,r22
/* #APP */
 ;  53 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r16, Z+
	lpm r17, Z
	
 ;  0 "" 2
/* #NOAPP */
.L16:
	movw r30,r16
	ld r30,Z
	and r30,r29
	cpse r30,r28
	rjmp .L8
	sub r24,r8
	sbc r25,r9
	sbc r26,r10
	sbc r27,r11
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r30,r22
/* #APP */
 ;  58 "/usr/share/arduino/hardware/arduino/cores/arduino/wiring_pulse.c" 1
	lpm r22, Z+
	lpm r23, Z
	
 ;  0 "" 2
/* #NOAPP */
	rjmp .L9
.L10:
	cp r18,r24
	cpc r19,r25
	cpc r20,r26
	cpc r21,r27
	breq .L14
	subi r18,-1
	sbci r19,-1
	sbci r20,-1
	sbci r21,-1
.L9:
	movw r30,r22
	ld r30,Z
	and r30,r29
	cp r30,r28
	breq .L10
	ldi r26,lo8(21)
	ldi r27,0
	call __muluhisi3
	movw r16,r22
	movw r18,r24
	subi r16,-16
	sbci r17,-1
	sbci r18,-1
	sbci r19,-1
	ldi r24,4
	1:
	lsr r19
	ror r18
	ror r17
	ror r16
	dec r24
	brne 1b
	rjmp .L4
.L14:
	ldi r16,0
	ldi r17,0
	movw r18,r16
.L4:
	movw r22,r16
	movw r24,r18
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(12)
	jmp __epilogue_restores__ + ((18 - 12) * 2)
	.size	pulseIn, .-pulseIn
	.ident	"GCC: (GNU) 4.7.2"
