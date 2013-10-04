	.file	"Print.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZN5Print5writeEPKhj,"ax",@progbits
.global	_ZN5Print5writeEPKhj
	.type	_ZN5Print5writeEPKhj, @function
_ZN5Print5writeEPKhj:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 8) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r12,r24
	movw r28,r22
	movw r14,r20
	add r14,r22
	adc r15,r23
	ldi r16,0
	ldi r17,0
	rjmp .L2
.L3:
	ld r22,Y+
	movw r26,r12
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r12
	icall
	add r16,r24
	adc r17,r25
.L2:
	cp r28,r14
	cpc r29,r15
	brne .L3
	movw r24,r16
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(8)
	jmp __epilogue_restores__ + ((18 - 8) * 2)
	.size	_ZN5Print5writeEPKhj, .-_ZN5Print5writeEPKhj
	.section	.text._ZN5Print5writeEPKc,"axG",@progbits,_ZN5Print5writeEPKc,comdat
	.weak	_ZN5Print5writeEPKc
	.type	_ZN5Print5writeEPKc, @function
_ZN5Print5writeEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L6
	movw r26,r22
	0:
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne 0b
	movw r20,r26
	subi r20,1
	sbc r21,__zero_reg__
	sub r20,r22
	sbc r21,r23
	movw r26,r24
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+2
	ldd r31,Z+3
	mov r30,__tmp_reg__
	icall
	movw r18,r24
	rjmp .L5
.L6:
	ldi r18,0
	ldi r19,0
.L5:
	movw r24,r18
	ret
	.size	_ZN5Print5writeEPKc, .-_ZN5Print5writeEPKc
	.section	.text._ZN5Print5printEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN5Print5printEPK19__FlashStringHelper
	.type	_ZN5Print5printEPK19__FlashStringHelper, @function
_ZN5Print5printEPK19__FlashStringHelper:
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r14,r24
	movw r28,r22
	ldi r16,0
	ldi r17,0
.L9:
	movw r30,r28
	adiw r28,1
/* #APP */
 ;  47 "/usr/share/arduino/hardware/arduino/cores/arduino/Print.cpp" 1
	lpm r22, Z
	
 ;  0 "" 2
/* #NOAPP */
	tst r22
	breq .L8
	movw r30,r14
	ld r26,Z
	ldd r27,Z+1
	ld r30,X+
	ld r31,X
	movw r24,r14
	icall
	add r16,r24
	adc r17,r25
	rjmp .L9
.L8:
	movw r24,r16
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN5Print5printEPK19__FlashStringHelper, .-_ZN5Print5printEPK19__FlashStringHelper
	.section	.text._ZN5Print5printERK6String,"ax",@progbits
.global	_ZN5Print5printERK6String
	.type	_ZN5Print5printERK6String, @function
_ZN5Print5printERK6String:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 10) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	movw r12,r22
	ldi r16,0
	ldi r17,0
	ldi r28,0
	ldi r29,0
	rjmp .L11
.L12:
	movw r26,r14
	ld r30,X+
	ld r31,X
	ld r10,Z
	ldd r11,Z+1
	movw r22,r16
	movw r24,r12
	call _ZNK6StringixEj
	mov r22,r24
	movw r24,r14
	movw r30,r10
	icall
	add r28,r24
	adc r29,r25
	subi r16,-1
	sbci r17,-1
.L11:
	movw r26,r12
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	cp r16,r24
	cpc r17,r25
	brlo .L12
	movw r24,r28
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(10)
	jmp __epilogue_restores__ + ((18 - 10) * 2)
	.size	_ZN5Print5printERK6String, .-_ZN5Print5printERK6String
	.section	.text._ZN5Print5printEPKc,"ax",@progbits
.global	_ZN5Print5printEPKc
	.type	_ZN5Print5printEPKc, @function
_ZN5Print5printEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZN5Print5writeEPKc
	ret
	.size	_ZN5Print5printEPKc, .-_ZN5Print5printEPKc
	.section	.text._ZN5Print5printEc,"ax",@progbits
.global	_ZN5Print5printEc
	.type	_ZN5Print5printEc, @function
_ZN5Print5printEc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	icall
	ret
	.size	_ZN5Print5printEc, .-_ZN5Print5printEc
	.section	.text._ZN5Print5printERK9Printable,"ax",@progbits
.global	_ZN5Print5printERK9Printable
	.type	_ZN5Print5printERK9Printable, @function
_ZN5Print5printERK9Printable:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r22
	ld r30,X+
	ld r31,X
	sbiw r26,1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r22,r24
	movw r24,r26
	icall
	ret
	.size	_ZN5Print5printERK9Printable, .-_ZN5Print5printERK9Printable
	.section	.text._ZN5Print7printlnEv,"ax",@progbits
.global	_ZN5Print7printlnEv
	.type	_ZN5Print7printlnEv, @function
_ZN5Print7printlnEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	ldi r22,lo8(13)
	call _ZN5Print5printEc
	movw r16,r24
	ldi r22,lo8(10)
	movw r24,r28
	call _ZN5Print5printEc
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEv, .-_ZN5Print7printlnEv
	.section	.text._ZN5Print7printlnEPK19__FlashStringHelper,"ax",@progbits
.global	_ZN5Print7printlnEPK19__FlashStringHelper
	.type	_ZN5Print7printlnEPK19__FlashStringHelper, @function
_ZN5Print7printlnEPK19__FlashStringHelper:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEPK19__FlashStringHelper
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEPK19__FlashStringHelper, .-_ZN5Print7printlnEPK19__FlashStringHelper
	.section	.text._ZN5Print7printlnERK6String,"ax",@progbits
.global	_ZN5Print7printlnERK6String
	.type	_ZN5Print7printlnERK6String, @function
_ZN5Print7printlnERK6String:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printERK6String
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnERK6String, .-_ZN5Print7printlnERK6String
	.section	.text._ZN5Print7printlnEPKc,"ax",@progbits
.global	_ZN5Print7printlnEPKc
	.type	_ZN5Print7printlnEPKc, @function
_ZN5Print7printlnEPKc:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5writeEPKc
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r16
	add r18,r24
	adc r19,r25
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEPKc, .-_ZN5Print7printlnEPKc
	.section	.text._ZN5Print7printlnEc,"ax",@progbits
.global	_ZN5Print7printlnEc
	.type	_ZN5Print7printlnEc, @function
_ZN5Print7printlnEc:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEc
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEc, .-_ZN5Print7printlnEc
	.section	.text._ZN5Print7printlnERK9Printable,"ax",@progbits
.global	_ZN5Print7printlnERK9Printable
	.type	_ZN5Print7printlnERK9Printable, @function
_ZN5Print7printlnERK9Printable:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printERK9Printable
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnERK9Printable, .-_ZN5Print7printlnERK9Printable
	.section	.text._ZN5Print11printNumberEmh,"ax",@progbits
.global	_ZN5Print11printNumberEmh
	.type	_ZN5Print11printNumberEmh, @function
_ZN5Print11printNumberEmh:
	push r4
	push r5
	push r6
	push r7
	push r9
	push r10
	push r11
	push r12
	push r13
	push r14
	push r15
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
	sbiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 33 */
/* stack size = 48 */
.L__stack_usage = 48
	movw r10,r24
	movw r12,r20
	movw r14,r22
	mov r9,r18
	std Y+33,__zero_reg__
	ldi r24,lo8(1)
	cp r24,r18
	brlo .L23
	ldi r24,lo8(10)
	mov r9,r24
.L23:
	movw r16,r28
	subi r16,-33
	sbci r17,-1
	mov r4,r9
	mov r5,__zero_reg__
	mov r6,__zero_reg__
	mov r7,__zero_reg__
.L26:
	movw r24,r14
	movw r22,r12
	movw r20,r6
	movw r18,r4
	call __udivmodsi4
	mov r24,r12
	mul r9,r18
	sub r24,r0
	clr __zero_reg__
	subi r16,1
	sbc r17,__zero_reg__
	cpi r24,lo8(10)
	brsh .L24
	subi r24,lo8(-(48))
	rjmp .L25
.L24:
	subi r24,lo8(-(55))
.L25:
	movw r30,r16
	st Z,r24
	movw r12,r18
	movw r14,r20
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	cpc r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .L26
	movw r22,r16
	movw r24,r10
	call _ZN5Print5writeEPKc
/* epilogue start */
	adiw r28,33
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r7
	pop r6
	pop r5
	pop r4
	ret
	.size	_ZN5Print11printNumberEmh, .-_ZN5Print11printNumberEmh
	.section	.text._ZN5Print5printEmi,"ax",@progbits
.global	_ZN5Print5printEmi
	.type	_ZN5Print5printEmi, @function
_ZN5Print5printEmi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L30
	movw r26,r24
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mov r22,r20
	icall
	ret
.L30:
	call _ZN5Print11printNumberEmh
	ret
	.size	_ZN5Print5printEmi, .-_ZN5Print5printEmi
	.section	.text._ZN5Print7printlnEmi,"ax",@progbits
.global	_ZN5Print7printlnEmi
	.type	_ZN5Print7printlnEmi, @function
_ZN5Print7printlnEmi:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEmi
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEmi, .-_ZN5Print7printlnEmi
	.section	.text._ZN5Print5printEji,"ax",@progbits
.global	_ZN5Print5printEji
	.type	_ZN5Print5printEji, @function
_ZN5Print5printEji:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r20
	movw r20,r22
	ldi r22,0
	ldi r23,0
	call _ZN5Print5printEmi
	ret
	.size	_ZN5Print5printEji, .-_ZN5Print5printEji
	.section	.text._ZN5Print7printlnEji,"ax",@progbits
.global	_ZN5Print7printlnEji
	.type	_ZN5Print7printlnEji, @function
_ZN5Print7printlnEji:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r18,r20
	movw r20,r22
	ldi r22,0
	ldi r23,0
	call _ZN5Print5printEmi
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r16
	add r18,r24
	adc r19,r25
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEji, .-_ZN5Print7printlnEji
	.section	.text._ZN5Print5printEhi,"ax",@progbits
.global	_ZN5Print5printEhi
	.type	_ZN5Print5printEhi, @function
_ZN5Print5printEhi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r20
	mov r20,r22
	ldi r21,0
	ldi r22,0
	ldi r23,0
	call _ZN5Print5printEmi
	ret
	.size	_ZN5Print5printEhi, .-_ZN5Print5printEhi
	.section	.text._ZN5Print7printlnEhi,"ax",@progbits
.global	_ZN5Print7printlnEhi
	.type	_ZN5Print7printlnEhi, @function
_ZN5Print7printlnEhi:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r18,r20
	mov r20,r22
	ldi r21,0
	ldi r22,0
	ldi r23,0
	call _ZN5Print5printEmi
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r16
	add r18,r24
	adc r19,r25
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEhi, .-_ZN5Print7printlnEhi
	.section	.text._ZN5Print5printEli,"ax",@progbits
.global	_ZN5Print5printEli
	.type	_ZN5Print5printEli, @function
_ZN5Print5printEli:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 8) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	movw r28,r24
	movw r12,r20
	movw r14,r22
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	brne .L38
	ld r30,Y
	ldd r31,Y+1
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	mov r22,r20
	icall
	rjmp .L42
.L38:
	cpi r18,10
	cpc r19,__zero_reg__
	brne .L40
	sbrs r23,7
	rjmp .L41
	ldi r22,lo8(45)
	call _ZN5Print5printEc
	movw r16,r24
	clr r20
	clr r21
	movw r22,r20
	sub r20,r12
	sbc r21,r13
	sbc r22,r14
	sbc r23,r15
	ldi r18,lo8(10)
	movw r24,r28
	call _ZN5Print11printNumberEmh
	add r16,r24
	adc r17,r25
	rjmp .L39
.L41:
	ldi r18,lo8(10)
.L40:
	movw r22,r14
	movw r20,r12
	movw r24,r28
	call _ZN5Print11printNumberEmh
.L42:
	movw r16,r24
.L39:
	movw r24,r16
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(8)
	jmp __epilogue_restores__ + ((18 - 8) * 2)
	.size	_ZN5Print5printEli, .-_ZN5Print5printEli
	.section	.text._ZN5Print7printlnEli,"ax",@progbits
.global	_ZN5Print7printlnEli
	.type	_ZN5Print7printlnEli, @function
_ZN5Print7printlnEli:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print5printEli
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r24
	add r18,r16
	adc r19,r17
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEli, .-_ZN5Print7printlnEli
	.section	.text._ZN5Print5printEii,"ax",@progbits
.global	_ZN5Print5printEii
	.type	_ZN5Print5printEii, @function
_ZN5Print5printEii:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r18,r20
	movw r20,r22
	clr r22
	sbrc r21,7
	com r22
	mov r23,r22
	call _ZN5Print5printEli
	ret
	.size	_ZN5Print5printEii, .-_ZN5Print5printEii
	.section	.text._ZN5Print7printlnEii,"ax",@progbits
.global	_ZN5Print7printlnEii
	.type	_ZN5Print7printlnEii, @function
_ZN5Print7printlnEii:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r18,r20
	movw r20,r22
	clr r22
	sbrc r21,7
	com r22
	mov r23,r22
	call _ZN5Print5printEli
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r16
	add r18,r24
	adc r19,r25
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEii, .-_ZN5Print7printlnEii
.global	__unordsf2
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"nan"
.global	__lesf2
.LC1:
	.string	"inf"
.global	__gtsf2
.LC2:
	.string	"ovf"
.global	__ltsf2
.global	__divsf3
.global	__addsf3
.global	__fixunssfsi
.global	__floatunsisf
.global	__subsf3
.LC3:
	.string	"."
.global	__mulsf3
.global	__fixsfsi
.global	__floatsisf
	.section	.text._ZN5Print10printFloatEdh,"ax",@progbits
.global	_ZN5Print10printFloatEdh
	.type	_ZN5Print10printFloatEdh, @function
_ZN5Print10printFloatEdh:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 13) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r28,r24
	movw r12,r20
	movw r14,r22
	mov r17,r18
	movw r18,r20
	movw r20,r22
	movw r24,r14
	movw r22,r12
	call __unordsf2
	tst r24
	breq .L71
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	rjmp .L75
.L71:
	movw r8,r12
	movw r10,r14
	clt
	bld r11,7
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	movw r24,r10
	movw r22,r8
	call __unordsf2
	cpse r24,__zero_reg__
	rjmp .L50
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(127)
	movw r24,r10
	movw r22,r8
	call __lesf2
	cp __zero_reg__,r24
	brge .L50
	ldi r22,lo8(.LC1)
	ldi r23,hi8(.LC1)
.L75:
	movw r24,r28
	call _ZN5Print5writeEPKc
	movw r14,r24
	rjmp .L49
.L50:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(79)
	movw r24,r14
	movw r22,r12
	call __gtsf2
	cp __zero_reg__,r24
	brge .L72
	rjmp .L76
.L72:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	ldi r20,lo8(127)
	ldi r21,lo8(-49)
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L73
.L76:
	ldi r22,lo8(.LC2)
	ldi r23,hi8(.LC2)
	rjmp .L75
.L73:
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __ltsf2
	sbrs r24,7
	rjmp .L74
	ldi r22,lo8(45)
	movw r24,r28
	call _ZN5Print5printEc
	movw r10,r24
	bst r15,7
	com r15
	bld r15,7
	com r15
	rjmp .L55
.L74:
	mov r10,__zero_reg__
	mov r11,__zero_reg__
.L55:
	ldi r16,0
	ldi r22,0
	ldi r23,0
	ldi r24,0
	ldi r25,lo8(63)
	rjmp .L57
.L58:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(65)
	call __divsf3
	subi r16,lo8(-(1))
.L57:
	cpse r16,r17
	rjmp .L58
	mov r18,r22
	mov r19,r23
	mov r20,r24
	mov r21,r25
	movw r24,r14
	movw r22,r12
	call __addsf3
	mov r7,r22
	mov r8,r23
	mov r9,r24
	mov r12,r25
	call __fixunssfsi
	mov r13,r22
	mov r14,r23
	mov r15,r24
	mov r16,r25
	call __floatunsisf
	movw r18,r22
	movw r20,r24
	mov r22,r7
	mov r23,r8
	mov r24,r9
	mov r25,r12
	call __subsf3
	mov r12,r22
	mov r9,r23
	mov r8,r24
	mov r7,r25
	ldi r18,lo8(10)
	mov r20,r13
	mov r21,r14
	mov r22,r15
	mov r23,r16
	movw r24,r28
	call _ZN5Print11printNumberEmh
	movw r14,r24
	add r14,r10
	adc r15,r11
	tst r17
	breq .L69
	ldi r22,lo8(.LC3)
	ldi r23,hi8(.LC3)
	movw r24,r28
	call _ZN5Print5writeEPKc
	add r14,r24
	adc r15,r25
	rjmp .L69
.L61:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(65)
	mov r22,r12
	mov r23,r9
	mov r24,r8
	mov r25,r7
	call __mulsf3
	mov r7,r22
	mov r16,r23
	movw r12,r24
	mov r25,r13
	call __fixsfsi
	movw r8,r22
	clr r10
	sbrc r9,7
	com r10
	mov r11,r10
	ldi r18,lo8(10)
	ldi r19,0
	movw r22,r10
	movw r20,r8
	movw r24,r28
	call _ZN5Print5printEli
	add r14,r24
	adc r15,r25
	movw r24,r10
	movw r22,r8
	call __floatsisf
	movw r18,r22
	movw r20,r24
	mov r22,r7
	mov r23,r16
	mov r24,r12
	mov r25,r13
	call __subsf3
	mov r12,r22
	mov r9,r23
	mov r8,r24
	mov r7,r25
	subi r17,lo8(-(-1))
.L69:
	cpse r17,__zero_reg__
	rjmp .L61
.L49:
	movw r24,r14
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(13)
	jmp __epilogue_restores__ + ((18 - 13) * 2)
	.size	_ZN5Print10printFloatEdh, .-_ZN5Print10printFloatEdh
	.section	.text._ZN5Print5printEdi,"ax",@progbits
.global	_ZN5Print5printEdi
	.type	_ZN5Print5printEdi, @function
_ZN5Print5printEdi:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZN5Print10printFloatEdh
	ret
	.size	_ZN5Print5printEdi, .-_ZN5Print5printEdi
	.section	.text._ZN5Print7printlnEdi,"ax",@progbits
.global	_ZN5Print7printlnEdi
	.type	_ZN5Print7printlnEdi, @function
_ZN5Print7printlnEdi:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call _ZN5Print10printFloatEdh
	movw r16,r24
	movw r24,r28
	call _ZN5Print7printlnEv
	movw r18,r16
	add r18,r24
	adc r19,r25
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN5Print7printlnEdi, .-_ZN5Print7printlnEdi
	.weak	_ZTV5Print
	.section	.rodata._ZTV5Print,"aG",@progbits,_ZTV5Print,comdat
	.type	_ZTV5Print, @object
	.size	_ZTV5Print, 8
_ZTV5Print:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
	.word	gs(_ZN5Print5writeEPKhj)
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
