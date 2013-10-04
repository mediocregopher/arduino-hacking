	.file	"WString.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZN6StringD2Ev,"ax",@progbits
.global	_ZN6StringD2Ev
	.type	_ZN6StringD2Ev, @function
_ZN6StringD2Ev:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	call free
	ret
	.size	_ZN6StringD2Ev, .-_ZN6StringD2Ev
.global	_ZN6StringD1Ev
	.set	_ZN6StringD1Ev,_ZN6StringD2Ev
	.section	.text._ZN6String10invalidateEv,"ax",@progbits
.global	_ZN6String10invalidateEv
	.type	_ZN6String10invalidateEv, @function
_ZN6String10invalidateEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	sbiw r24,0
	breq .L3
	call free
.L3:
	std Y+1,__zero_reg__
	st Y,__zero_reg__
	std Y+5,__zero_reg__
	std Y+4,__zero_reg__
	std Y+3,__zero_reg__
	std Y+2,__zero_reg__
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String10invalidateEv, .-_ZN6String10invalidateEv
	.section	.text._ZN6String12changeBufferEj,"ax",@progbits
.global	_ZN6String12changeBufferEj
	.type	_ZN6String12changeBufferEj, @function
_ZN6String12changeBufferEj:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	movw r16,r22
	subi r22,-1
	sbci r23,-1
	ld r24,Y
	ldd r25,Y+1
	call realloc
	sbiw r24,0
	breq .L9
	std Y+1,r25
	st Y,r24
	std Y+3,r17
	std Y+2,r16
	ldi r24,lo8(1)
	rjmp .L8
.L9:
	ldi r24,0
.L8:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6String12changeBufferEj, .-_ZN6String12changeBufferEj
	.section	.text._ZN6String7reserveEj,"ax",@progbits
.global	_ZN6String7reserveEj
	.type	_ZN6String7reserveEj, @function
_ZN6String7reserveEj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ld r24,Y
	ldd r25,Y+1
	or r24,r25
	breq .L11
	ldd r24,Y+2
	ldd r25,Y+3
	cp r24,r22
	cpc r25,r23
	brlo .L11
	rjmp .L18
.L11:
	movw r24,r28
	call _ZN6String12changeBufferEj
	tst r24
	breq .L14
	ldd r24,Y+4
	ldd r25,Y+5
	or r24,r25
	brne .L18
	ld r30,Y
	ldd r31,Y+1
	st Z,__zero_reg__
.L18:
	ldi r24,lo8(1)
	rjmp .L12
.L14:
	ldi r24,0
.L12:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String7reserveEj, .-_ZN6String7reserveEj
	.section	.text._ZN6String4copyEPKcj,"ax",@progbits
.global	_ZN6String4copyEPKcj
	.type	_ZN6String4copyEPKcj, @function
_ZN6String4copyEPKcj:
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
	movw r28,r24
	movw r14,r22
	movw r16,r20
	movw r22,r20
	call _ZN6String7reserveEj
	cpse r24,__zero_reg__
	rjmp .L20
	movw r24,r28
	call _ZN6String10invalidateEv
	rjmp .L21
.L20:
	std Y+5,r17
	std Y+4,r16
	movw r22,r14
	ld r24,Y
	ldd r25,Y+1
	call strcpy
.L21:
	movw r24,r28
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6String4copyEPKcj, .-_ZN6String4copyEPKcj
	.section	.text._ZN6StringC2EPKc,"ax",@progbits
.global	_ZN6StringC2EPKc
	.type	_ZN6StringC2EPKc, @function
_ZN6StringC2EPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,1
	st X,__zero_reg__
	st -X,__zero_reg__
	adiw r26,2+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,2
	adiw r26,4+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,4
	adiw r26,6
	st X,__zero_reg__
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L22
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
	call _ZN6String4copyEPKcj
.L22:
	ret
	.size	_ZN6StringC2EPKc, .-_ZN6StringC2EPKc
.global	_ZN6StringC1EPKc
	.set	_ZN6StringC1EPKc,_ZN6StringC2EPKc
	.section	.text._ZN6StringaSERKS_,"ax",@progbits
.global	_ZN6StringaSERKS_
	.type	_ZN6StringaSERKS_, @function
_ZN6StringaSERKS_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	movw r30,r22
	cp r24,r22
	cpc r25,r23
	breq .L28
	ld r22,Z
	ldd r23,Z+1
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L29
	ldd r20,Z+4
	ldd r21,Z+5
	call _ZN6String4copyEPKcj
	rjmp .L28
.L29:
	call _ZN6String10invalidateEv
.L28:
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6StringaSERKS_, .-_ZN6StringaSERKS_
	.section	.text._ZN6StringC2ERKS_,"ax",@progbits
.global	_ZN6StringC2ERKS_
	.type	_ZN6StringC2ERKS_, @function
_ZN6StringC2ERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	call _ZN6StringaSERKS_
	ret
	.size	_ZN6StringC2ERKS_, .-_ZN6StringC2ERKS_
.global	_ZN6StringC1ERKS_
	.set	_ZN6StringC1ERKS_,_ZN6StringC2ERKS_
	.section	.text._ZN6StringaSEPKc,"ax",@progbits
.global	_ZN6StringaSEPKc
	.type	_ZN6StringaSEPKc, @function
_ZN6StringaSEPKc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L32
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
	call _ZN6String4copyEPKcj
	rjmp .L33
.L32:
	call _ZN6String10invalidateEv
.L33:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6StringaSEPKc, .-_ZN6StringaSEPKc
	.section	.text._ZN6StringC2Emh,"ax",@progbits
.global	_ZN6StringC2Emh
	.type	_ZN6StringC2Emh, @function
_ZN6StringC2Emh:
	ldi r26,lo8(33)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 4) * 2)
1:
/* prologue: function */
/* frame size = 33 */
/* stack size = 37 */
.L__stack_usage = 37
	movw r16,r24
	movw r24,r22
	movw r22,r20
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	ldi r19,0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call ultoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,33
	ldi r30, lo8(4)
	jmp __epilogue_restores__ + ((18 - 4) * 2)
	.size	_ZN6StringC2Emh, .-_ZN6StringC2Emh
.global	_ZN6StringC1Emh
	.set	_ZN6StringC1Emh,_ZN6StringC2Emh
	.section	.text._ZN6StringC2Elh,"ax",@progbits
.global	_ZN6StringC2Elh
	.type	_ZN6StringC2Elh, @function
_ZN6StringC2Elh:
	ldi r26,lo8(34)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 4) * 2)
1:
/* prologue: function */
/* frame size = 34 */
/* stack size = 38 */
.L__stack_usage = 38
	movw r16,r24
	movw r24,r22
	movw r22,r20
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	ldi r19,0
	movw r20,r28
	subi r20,-1
	sbci r21,-1
	call ltoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,34
	ldi r30, lo8(4)
	jmp __epilogue_restores__ + ((18 - 4) * 2)
	.size	_ZN6StringC2Elh, .-_ZN6StringC2Elh
.global	_ZN6StringC1Elh
	.set	_ZN6StringC1Elh,_ZN6StringC2Elh
	.section	.text._ZN6StringC2Ejh,"ax",@progbits
.global	_ZN6StringC2Ejh
	.type	_ZN6StringC2Ejh, @function
_ZN6StringC2Ejh:
	ldi r26,lo8(17)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 4) * 2)
1:
/* prologue: function */
/* frame size = 17 */
/* stack size = 21 */
.L__stack_usage = 21
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call utoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,17
	ldi r30, lo8(4)
	jmp __epilogue_restores__ + ((18 - 4) * 2)
	.size	_ZN6StringC2Ejh, .-_ZN6StringC2Ejh
.global	_ZN6StringC1Ejh
	.set	_ZN6StringC1Ejh,_ZN6StringC2Ejh
	.section	.text._ZN6StringC2Eih,"ax",@progbits
.global	_ZN6StringC2Eih
	.type	_ZN6StringC2Eih, @function
_ZN6StringC2Eih:
	ldi r26,lo8(18)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 4) * 2)
1:
/* prologue: function */
/* frame size = 18 */
/* stack size = 22 */
.L__stack_usage = 22
	movw r16,r24
	movw r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call itoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,18
	ldi r30, lo8(4)
	jmp __epilogue_restores__ + ((18 - 4) * 2)
	.size	_ZN6StringC2Eih, .-_ZN6StringC2Eih
.global	_ZN6StringC1Eih
	.set	_ZN6StringC1Eih,_ZN6StringC2Eih
	.section	.text._ZN6StringC2Ehh,"ax",@progbits
.global	_ZN6StringC2Ehh
	.type	_ZN6StringC2Ehh, @function
_ZN6StringC2Ehh:
	ldi r26,lo8(9)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 4) * 2)
1:
/* prologue: function */
/* frame size = 9 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r16,r24
	mov r24,r22
	movw r30,r16
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r25,0
	call utoa
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	movw r24,r16
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,9
	ldi r30, lo8(4)
	jmp __epilogue_restores__ + ((18 - 4) * 2)
	.size	_ZN6StringC2Ehh, .-_ZN6StringC2Ehh
.global	_ZN6StringC1Ehh
	.set	_ZN6StringC1Ehh,_ZN6StringC2Ehh
	.section	.text._ZN6StringC2Ec,"ax",@progbits
.global	_ZN6StringC2Ec
	.type	_ZN6StringC2Ec, @function
_ZN6StringC2Ec:
	ldi r26,lo8(2)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 2) * 2)
1:
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r30,r24
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	std Z+5,__zero_reg__
	std Z+4,__zero_reg__
	std Z+6,__zero_reg__
	std Y+1,r22
	std Y+2,__zero_reg__
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZN6StringaSEPKc
/* epilogue start */
	adiw r28,2
	ldi r30, lo8(2)
	jmp __epilogue_restores__ + ((18 - 2) * 2)
	.size	_ZN6StringC2Ec, .-_ZN6StringC2Ec
.global	_ZN6StringC1Ec
	.set	_ZN6StringC1Ec,_ZN6StringC2Ec
	.section	.text._ZN6String6concatEPKcj,"ax",@progbits
.global	_ZN6String6concatEPKcj
	.type	_ZN6String6concatEPKcj, @function
_ZN6String6concatEPKcj:
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
	movw r28,r24
	movw r14,r22
	ldd r16,Y+4
	ldd r17,Y+5
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L41
.L43:
	ldi r24,0
	rjmp .L42
.L41:
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L44
	add r16,r20
	adc r17,r21
	movw r22,r16
	call _ZN6String7reserveEj
	tst r24
	breq .L43
	ld r18,Y
	ldd r19,Y+1
	ldd r24,Y+4
	ldd r25,Y+5
	movw r22,r14
	add r24,r18
	adc r25,r19
	call strcpy
	std Y+5,r17
	std Y+4,r16
.L44:
	ldi r24,lo8(1)
.L42:
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6String6concatEPKcj, .-_ZN6String6concatEPKcj
	.section	.text._ZN6String6concatERKS_,"ax",@progbits
.global	_ZN6String6concatERKS_
	.type	_ZN6String6concatERKS_, @function
_ZN6String6concatERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	ld r22,Z
	ldd r23,Z+1
	call _ZN6String6concatEPKcj
	ret
	.size	_ZN6String6concatERKS_, .-_ZN6String6concatERKS_
	.section	.text._ZN6String6concatEPKc,"ax",@progbits
.global	_ZN6String6concatEPKc
	.type	_ZN6String6concatEPKc, @function
_ZN6String6concatEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L51
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
	call _ZN6String6concatEPKcj
	ret
.L51:
	ldi r24,0
	ret
	.size	_ZN6String6concatEPKc, .-_ZN6String6concatEPKc
	.section	.text._ZN6String6concatEc,"ax",@progbits
.global	_ZN6String6concatEc
	.type	_ZN6String6concatEc, @function
_ZN6String6concatEc:
	ldi r26,lo8(2)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 2) * 2)
1:
/* prologue: function */
/* frame size = 2 */
/* stack size = 4 */
.L__stack_usage = 4
	std Y+1,r22
	std Y+2,__zero_reg__
	ldi r20,lo8(1)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,2
	ldi r30, lo8(2)
	jmp __epilogue_restores__ + ((18 - 2) * 2)
	.size	_ZN6String6concatEc, .-_ZN6String6concatEc
	.section	.text._ZN6String6concatEh,"ax",@progbits
.global	_ZN6String6concatEh
	.type	_ZN6String6concatEh, @function
_ZN6String6concatEh:
	ldi r26,lo8(4)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 6) * 2)
1:
/* prologue: function */
/* frame size = 4 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r14,r24
	mov r24,r22
	ldi r20,lo8(10)
	ldi r21,0
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r22,r16
	ldi r25,0
	call itoa
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r30
	subi r20,1
	sbc r21,__zero_reg__
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,4
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6String6concatEh, .-_ZN6String6concatEh
	.section	.text._ZN6String6concatEi,"ax",@progbits
.global	_ZN6String6concatEi
	.type	_ZN6String6concatEi, @function
_ZN6String6concatEi:
	ldi r26,lo8(7)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 6) * 2)
1:
/* prologue: function */
/* frame size = 7 */
/* stack size = 13 */
.L__stack_usage = 13
	movw r14,r24
	movw r24,r22
	ldi r20,lo8(10)
	ldi r21,0
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r22,r16
	call itoa
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r30
	subi r20,1
	sbc r21,__zero_reg__
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,7
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6String6concatEi, .-_ZN6String6concatEi
	.section	.text._ZN6String6concatEj,"ax",@progbits
.global	_ZN6String6concatEj
	.type	_ZN6String6concatEj, @function
_ZN6String6concatEj:
	ldi r26,lo8(6)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 6) * 2)
1:
/* prologue: function */
/* frame size = 6 */
/* stack size = 12 */
.L__stack_usage = 12
	movw r14,r24
	movw r24,r22
	ldi r20,lo8(10)
	ldi r21,0
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r22,r16
	call utoa
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r30
	subi r20,1
	sbc r21,__zero_reg__
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,6
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6String6concatEj, .-_ZN6String6concatEj
	.section	.text._ZN6String6concatEl,"ax",@progbits
.global	_ZN6String6concatEl
	.type	_ZN6String6concatEl, @function
_ZN6String6concatEl:
	ldi r26,lo8(12)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 6) * 2)
1:
/* prologue: function */
/* frame size = 12 */
/* stack size = 18 */
.L__stack_usage = 18
	movw r14,r24
	movw r24,r22
	movw r22,r20
	ldi r18,lo8(10)
	ldi r19,0
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r20,r16
	call ltoa
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r30
	subi r20,1
	sbc r21,__zero_reg__
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,12
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6String6concatEl, .-_ZN6String6concatEl
	.section	.text._ZN6String6concatEm,"ax",@progbits
.global	_ZN6String6concatEm
	.type	_ZN6String6concatEm, @function
_ZN6String6concatEm:
	ldi r26,lo8(11)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 6) * 2)
1:
/* prologue: function */
/* frame size = 11 */
/* stack size = 17 */
.L__stack_usage = 17
	movw r14,r24
	movw r24,r22
	movw r22,r20
	ldi r18,lo8(10)
	ldi r19,0
	movw r16,r28
	subi r16,-1
	sbci r17,-1
	movw r20,r16
	call ultoa
	movw r30,r16
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r30
	subi r20,1
	sbc r21,__zero_reg__
	sub r20,r16
	sbc r21,r17
	movw r22,r16
	movw r24,r14
	call _ZN6String6concatEPKcj
/* epilogue start */
	adiw r28,11
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6String6concatEm, .-_ZN6String6concatEm
	.section	.text._ZplRK15StringSumHelperRK6String,"ax",@progbits
.global	_ZplRK15StringSumHelperRK6String
	.type	_ZplRK15StringSumHelperRK6String, @function
_ZplRK15StringSumHelperRK6String:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	ld r22,Z
	ldd r23,Z+1
	call _ZN6String6concatEPKcj
	cpse r24,__zero_reg__
	rjmp .L59
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L59:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperRK6String, .-_ZplRK15StringSumHelperRK6String
	.section	.text._ZplRK15StringSumHelperPKc,"ax",@progbits
.global	_ZplRK15StringSumHelperPKc
	.type	_ZplRK15StringSumHelperPKc, @function
_ZplRK15StringSumHelperPKc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L61
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
	call _ZN6String6concatEPKcj
	cpse r24,__zero_reg__
	rjmp .L69
.L61:
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L69:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperPKc, .-_ZplRK15StringSumHelperPKc
	.section	.text._ZplRK15StringSumHelperc,"ax",@progbits
.global	_ZplRK15StringSumHelperc
	.type	_ZplRK15StringSumHelperc, @function
_ZplRK15StringSumHelperc:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	call _ZN6String6concatEc
	cpse r24,__zero_reg__
	rjmp .L71
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L71:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperc, .-_ZplRK15StringSumHelperc
	.section	.text._ZplRK15StringSumHelperh,"ax",@progbits
.global	_ZplRK15StringSumHelperh
	.type	_ZplRK15StringSumHelperh, @function
_ZplRK15StringSumHelperh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	call _ZN6String6concatEh
	cpse r24,__zero_reg__
	rjmp .L73
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L73:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperh, .-_ZplRK15StringSumHelperh
	.section	.text._ZplRK15StringSumHelperi,"ax",@progbits
.global	_ZplRK15StringSumHelperi
	.type	_ZplRK15StringSumHelperi, @function
_ZplRK15StringSumHelperi:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	call _ZN6String6concatEi
	cpse r24,__zero_reg__
	rjmp .L75
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L75:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperi, .-_ZplRK15StringSumHelperi
	.section	.text._ZplRK15StringSumHelperj,"ax",@progbits
.global	_ZplRK15StringSumHelperj
	.type	_ZplRK15StringSumHelperj, @function
_ZplRK15StringSumHelperj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	call _ZN6String6concatEj
	cpse r24,__zero_reg__
	rjmp .L77
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L77:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperj, .-_ZplRK15StringSumHelperj
	.section	.text._ZplRK15StringSumHelperl,"ax",@progbits
.global	_ZplRK15StringSumHelperl
	.type	_ZplRK15StringSumHelperl, @function
_ZplRK15StringSumHelperl:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	call _ZN6String6concatEl
	cpse r24,__zero_reg__
	rjmp .L79
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L79:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperl, .-_ZplRK15StringSumHelperl
	.section	.text._ZplRK15StringSumHelperm,"ax",@progbits
.global	_ZplRK15StringSumHelperm
	.type	_ZplRK15StringSumHelperm, @function
_ZplRK15StringSumHelperm:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	mov r29,r24
	mov r28,r25
	call _ZN6String6concatEm
	cpse r24,__zero_reg__
	rjmp .L81
	mov r24,r29
	mov r25,r28
	call _ZN6String10invalidateEv
.L81:
	mov r24,r29
	mov r25,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZplRK15StringSumHelperm, .-_ZplRK15StringSumHelperm
	.section	.text._ZNK6String9compareToERKS_,"ax",@progbits
.global	_ZNK6String9compareToERKS_
	.type	_ZNK6String9compareToERKS_, @function
_ZNK6String9compareToERKS_:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r26,r24
	ld r30,X+
	ld r31,X
	movw r28,r22
	ld r26,Y
	ldd r27,Y+1
	sbiw r30,0
	breq .L83
	sbiw r26,0
	brne .L84
.L83:
	sbiw r26,0
	breq .L85
	movw r28,r22
	ldd r18,Y+4
	ldd r19,Y+5
	or r18,r19
	breq .L85
	ld r18,X
	ldi r19,0
	neg r19
	neg r18
	sbc r19,__zero_reg__
	rjmp .L86
.L85:
	sbiw r30,0
	breq .L88
	movw r26,r24
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	or r24,r25
	breq .L88
	ld r18,Z
	ldi r19,0
	rjmp .L86
.L84:
	movw r22,r26
	movw r24,r30
	call strcmp
	movw r18,r24
	rjmp .L86
.L88:
	ldi r18,0
	ldi r19,0
.L86:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZNK6String9compareToERKS_, .-_ZNK6String9compareToERKS_
	.section	.text._ZNK6String6equalsERKS_,"ax",@progbits
.global	_ZNK6String6equalsERKS_
	.type	_ZNK6String6equalsERKS_, @function
_ZNK6String6equalsERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	cp r20,r18
	cpc r21,r19
	brne .L101
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(1)
	or r24,r25
	breq .L99
.L101:
	ldi r18,0
.L99:
	mov r24,r18
	ret
	.size	_ZNK6String6equalsERKS_, .-_ZNK6String6equalsERKS_
	.section	.text._ZNK6String6equalsEPKc,"ax",@progbits
.global	_ZNK6String6equalsEPKc
	.type	_ZNK6String6equalsEPKc, @function
_ZNK6String6equalsEPKc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	or r18,r19
	brne .L106
	ldi r24,lo8(1)
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L113
	movw r30,r22
	rjmp .L125
.L113:
	ret
.L106:
	movw r26,r24
	ld r30,X+
	ld r31,X
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	brne .L110
	ldi r24,lo8(1)
.L125:
	ld r25,Z
	tst r25
	breq .L109
	rjmp .L123
.L110:
	movw r24,r30
	call strcmp
	movw r18,r24
	ldi r24,lo8(1)
	or r18,r19
	breq .L109
.L123:
	ldi r24,0
.L109:
	ret
	.size	_ZNK6String6equalsEPKc, .-_ZNK6String6equalsEPKc
	.section	.text._ZNK6StringltERKS_,"ax",@progbits
.global	_ZNK6StringltERKS_
	.type	_ZNK6StringltERKS_, @function
_ZNK6StringltERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	mov r24,r25
	rol r24
	clr r24
	rol r24
	ret
	.size	_ZNK6StringltERKS_, .-_ZNK6StringltERKS_
	.section	.text._ZNK6StringgtERKS_,"ax",@progbits
.global	_ZNK6StringgtERKS_
	.type	_ZNK6StringgtERKS_, @function
_ZNK6StringgtERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(1)
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .L128
	ldi r18,0
.L128:
	mov r24,r18
	ret
	.size	_ZNK6StringgtERKS_, .-_ZNK6StringgtERKS_
	.section	.text._ZNK6StringleERKS_,"ax",@progbits
.global	_ZNK6StringleERKS_
	.type	_ZNK6StringleERKS_, @function
_ZNK6StringleERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	ldi r18,lo8(1)
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brge .L130
	ldi r18,0
.L130:
	mov r24,r18
	ret
	.size	_ZNK6StringleERKS_, .-_ZNK6StringleERKS_
	.section	.text._ZNK6StringgeERKS_,"ax",@progbits
.global	_ZNK6StringgeERKS_
	.type	_ZNK6StringgeERKS_, @function
_ZNK6StringgeERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6String9compareToERKS_
	mov r24,r25
	com r24
	rol r24
	clr r24
	rol r24
	ret
	.size	_ZNK6StringgeERKS_, .-_ZNK6StringgeERKS_
	.section	.text._ZNK6String16equalsIgnoreCaseERKS_,"ax",@progbits
.global	_ZNK6String16equalsIgnoreCaseERKS_
	.type	_ZNK6String16equalsIgnoreCaseERKS_, @function
_ZNK6String16equalsIgnoreCaseERKS_:
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
	cp r24,r22
	cpc r25,r23
	breq .L138
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	cp r18,r20
	cpc r19,r21
	brne .L139
	or r18,r19
	breq .L138
	ld r28,Z
	ldd r29,Z+1
	movw r30,r24
	ld r16,Z
	ldd r17,Z+1
	rjmp .L134
.L135:
	ldi r25,0
	call tolower
	movw r14,r24
	ld r24,Y+
	ldi r25,0
	call tolower
	cp r14,r24
	cpc r15,r25
	brne .L139
.L134:
	movw r30,r16
	ld r24,Z+
	movw r16,r30
	cpse r24,__zero_reg__
	rjmp .L135
.L138:
	ldi r24,lo8(1)
	rjmp .L133
.L139:
	ldi r24,0
.L133:
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZNK6String16equalsIgnoreCaseERKS_, .-_ZNK6String16equalsIgnoreCaseERKS_
	.section	.text._ZNK6String10startsWithERKS_j,"ax",@progbits
.global	_ZNK6String10startsWithERKS_j
	.type	_ZNK6String10startsWithERKS_j, @function
_ZNK6String10startsWithERKS_j:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r20
	movw r26,r22
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	movw r26,r24
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	sub r18,r20
	sbc r19,r21
	cp r18,r30
	cpc r19,r31
	brlo .L145
	ld r24,X+
	ld r25,X
	sbiw r24,0
	breq .L145
	movw r26,r22
	ld r22,X+
	ld r23,X
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L145
	add r24,r30
	adc r25,r31
	call strncmp
	movw r18,r24
	ldi r24,lo8(1)
	or r18,r19
	breq .L141
.L145:
	ldi r24,0
.L141:
	ret
	.size	_ZNK6String10startsWithERKS_j, .-_ZNK6String10startsWithERKS_j
	.section	.text._ZNK6String10startsWithERKS_,"ax",@progbits
.global	_ZNK6String10startsWithERKS_
	.type	_ZNK6String10startsWithERKS_, @function
_ZNK6String10startsWithERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	cp r20,r18
	cpc r21,r19
	brlo .L151
	ldi r20,0
	ldi r21,0
	call _ZNK6String10startsWithERKS_j
	ret
.L151:
	ldi r24,0
	ret
	.size	_ZNK6String10startsWithERKS_, .-_ZNK6String10startsWithERKS_
	.section	.text._ZNK6String8endsWithERKS_,"ax",@progbits
.global	_ZNK6String8endsWithERKS_
	.type	_ZNK6String8endsWithERKS_, @function
_ZNK6String8endsWithERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	movw r26,r22
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	cp r24,r20
	cpc r25,r21
	brlo .L157
	ld r18,Z
	ldd r19,Z+1
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L157
	ld r22,X+
	ld r23,X
	cp r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L157
	sub r24,r20
	sbc r25,r21
	add r24,r18
	adc r25,r19
	call strcmp
	movw r18,r24
	ldi r24,lo8(1)
	or r18,r19
	breq .L153
.L157:
	ldi r24,0
.L153:
	ret
	.size	_ZNK6String8endsWithERKS_, .-_ZNK6String8endsWithERKS_
	.section	.text._ZN6String9setCharAtEjc,"ax",@progbits
.global	_ZN6String9setCharAtEjc
	.type	_ZN6String9setCharAtEjc, @function
_ZN6String9setCharAtEjc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	cp r22,r18
	cpc r23,r19
	brsh .L161
	ld r30,X+
	ld r31,X
	add r30,r22
	adc r31,r23
	st Z,r20
.L161:
	ret
	.size	_ZN6String9setCharAtEjc, .-_ZN6String9setCharAtEjc
	.section	.text._ZN6StringixEj,"ax",@progbits
.global	_ZN6StringixEj
	.type	_ZN6StringixEj, @function
_ZN6StringixEj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r22,r18
	cpc r23,r19
	brsh .L164
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	brne .L165
.L164:
	sts _ZZN6StringixEjE19dummy_writable_char,__zero_reg__
	ldi r22,lo8(_ZZN6StringixEjE19dummy_writable_char)
	ldi r23,hi8(_ZZN6StringixEjE19dummy_writable_char)
	rjmp .L166
.L165:
	add r22,r24
	adc r23,r25
.L166:
	movw r24,r22
	ret
	.size	_ZN6StringixEj, .-_ZN6StringixEj
	.section	.text._ZNK6StringixEj,"ax",@progbits
.global	_ZNK6StringixEj
	.type	_ZNK6StringixEj, @function
_ZNK6StringixEj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r22,r18
	cpc r23,r19
	brsh .L170
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L170
	movw r30,r24
	add r30,r22
	adc r31,r23
	ld r24,Z
	ret
.L170:
	ldi r24,0
	ret
	.size	_ZNK6StringixEj, .-_ZNK6StringixEj
	.section	.text._ZNK6String6charAtEj,"ax",@progbits
.global	_ZNK6String6charAtEj
	.type	_ZNK6String6charAtEj, @function
_ZNK6String6charAtEj:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call _ZNK6StringixEj
	ret
	.size	_ZNK6String6charAtEj, .-_ZNK6String6charAtEj
	.section	.text._ZNK6String8getBytesEPhjj,"ax",@progbits
.global	_ZNK6String8getBytesEPhjj
	.type	_ZNK6String8getBytesEPhjj, @function
_ZNK6String8getBytesEPhjj:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r22
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L172
	sbiw r28,0
	breq .L172
	movw r30,r24
	ldd r16,Z+4
	ldd r17,Z+5
	cp r18,r16
	cpc r19,r17
	brlo .L174
	rjmp .L182
.L174:
	subi r20,1
	sbc r21,__zero_reg__
	sub r16,r18
	sbc r17,r19
	cp r20,r16
	cpc r21,r17
	brsh .L175
	movw r16,r20
.L175:
	movw r30,r24
	ld r22,Z
	ldd r23,Z+1
	add r22,r18
	adc r23,r19
	movw r20,r16
	movw r24,r28
	call strncpy
	add r28,r16
	adc r29,r17
.L182:
	st Y,__zero_reg__
.L172:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZNK6String8getBytesEPhjj, .-_ZNK6String8getBytesEPhjj
	.section	.text._ZNK6String7indexOfEcj,"ax",@progbits
.global	_ZNK6String7indexOfEcj
	.type	_ZNK6String7indexOfEcj, @function
_ZNK6String7indexOfEcj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	cp r20,r24
	cpc r21,r25
	brsh .L186
	ld r28,Z
	ldd r29,Z+1
	ldi r23,0
	movw r24,r28
	add r24,r20
	adc r25,r21
	call strchr
	sbiw r24,0
	breq .L186
	movw r18,r24
	sub r18,r28
	sbc r19,r29
	rjmp .L184
.L186:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
.L184:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZNK6String7indexOfEcj, .-_ZNK6String7indexOfEcj
	.section	.text._ZNK6String7indexOfEc,"ax",@progbits
.global	_ZNK6String7indexOfEc
	.type	_ZNK6String7indexOfEc, @function
_ZNK6String7indexOfEc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,0
	ldi r21,0
	call _ZNK6String7indexOfEcj
	ret
	.size	_ZNK6String7indexOfEc, .-_ZNK6String7indexOfEc
	.section	.text._ZNK6String7indexOfERKS_j,"ax",@progbits
.global	_ZNK6String7indexOfERKS_j
	.type	_ZNK6String7indexOfERKS_j, @function
_ZNK6String7indexOfERKS_j:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r24,Z+4
	ldd r25,Z+5
	cp r20,r24
	cpc r21,r25
	brsh .L191
	ld r28,Z
	ldd r29,Z+1
	movw r30,r22
	ld r22,Z
	ldd r23,Z+1
	movw r24,r28
	add r24,r20
	adc r25,r21
	call strstr
	sbiw r24,0
	breq .L191
	movw r18,r24
	sub r18,r28
	sbc r19,r29
	rjmp .L189
.L191:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
.L189:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZNK6String7indexOfERKS_j, .-_ZNK6String7indexOfERKS_j
	.section	.text._ZNK6String7indexOfERKS_,"ax",@progbits
.global	_ZNK6String7indexOfERKS_
	.type	_ZNK6String7indexOfERKS_, @function
_ZNK6String7indexOfERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,0
	ldi r21,0
	call _ZNK6String7indexOfERKS_j
	ret
	.size	_ZNK6String7indexOfERKS_, .-_ZNK6String7indexOfERKS_
	.section	.text._ZNK6String11lastIndexOfEcj,"ax",@progbits
.global	_ZNK6String11lastIndexOfEcj
	.type	_ZNK6String11lastIndexOfEcj, @function
_ZNK6String11lastIndexOfEcj:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 7) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r28,r24
	ldd r24,Y+4
	ldd r25,Y+5
	cp r20,r24
	cpc r21,r25
	brlo .L194
.L196:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
	rjmp .L195
.L194:
	movw r16,r20
	subi r16,-1
	sbci r17,-1
	ld r30,Y
	ldd r31,Y+1
	add r30,r16
	adc r31,r17
	ld r13,Z
	st Z,__zero_reg__
	ld r14,Y
	ldd r15,Y+1
	ldi r23,0
	movw r24,r14
	call strrchr
	movw r30,r14
	add r30,r16
	adc r31,r17
	st Z,r13
	sbiw r24,0
	breq .L196
	ld r18,Y
	ldd r19,Y+1
	movw r20,r24
	sub r20,r18
	sbc r21,r19
	movw r18,r20
.L195:
	movw r24,r18
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(7)
	jmp __epilogue_restores__ + ((18 - 7) * 2)
	.size	_ZNK6String11lastIndexOfEcj, .-_ZNK6String11lastIndexOfEcj
	.section	.text._ZNK6String11lastIndexOfEc,"ax",@progbits
.global	_ZNK6String11lastIndexOfEc
	.type	_ZNK6String11lastIndexOfEc, @function
_ZNK6String11lastIndexOfEc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	subi r20,1
	sbc r21,__zero_reg__
	call _ZNK6String11lastIndexOfEcj
	ret
	.size	_ZNK6String11lastIndexOfEc, .-_ZNK6String11lastIndexOfEc
	.section	.text._ZNK6String11lastIndexOfERKS_j,"ax",@progbits
.global	_ZNK6String11lastIndexOfERKS_j
	.type	_ZNK6String11lastIndexOfERKS_j, @function
_ZNK6String11lastIndexOfERKS_j:
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
	movw r12,r22
	movw r16,r20
	movw r30,r22
	ldd r20,Z+4
	ldd r21,Z+5
	cp r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L209
	movw r30,r24
	ldd r18,Z+4
	ldd r19,Z+5
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L209
	cp r18,r20
	cpc r19,r21
	brlo .L209
	cp r16,r18
	cpc r17,r19
	brlo .L203
	movw r16,r18
	subi r16,1
	sbc r17,__zero_reg__
.L203:
	movw r30,r24
	ld r14,Z
	ldd r15,Z+1
	movw r24,r14
	ldi r28,lo8(-1)
	ldi r29,lo8(-1)
	movw r10,r14
	add r10,r16
	adc r11,r17
	rjmp .L204
.L206:
	movw r30,r12
	ld r22,Z
	ldd r23,Z+1
	call strstr
	sbiw r24,0
	breq .L202
	movw r18,r24
	sub r18,r14
	sbc r19,r15
	cp r16,r18
	cpc r17,r19
	brsh .L205
	movw r18,r28
.L205:
	adiw r24,1
	movw r28,r18
.L204:
	cp r10,r24
	cpc r11,r25
	brsh .L206
	rjmp .L202
.L209:
	ldi r28,lo8(-1)
	ldi r29,lo8(-1)
.L202:
	movw r24,r28
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(10)
	jmp __epilogue_restores__ + ((18 - 10) * 2)
	.size	_ZNK6String11lastIndexOfERKS_j, .-_ZNK6String11lastIndexOfERKS_j
	.section	.text._ZNK6String11lastIndexOfERKS_,"ax",@progbits
.global	_ZNK6String11lastIndexOfERKS_
	.type	_ZNK6String11lastIndexOfERKS_, @function
_ZNK6String11lastIndexOfERKS_:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r20,Z+4
	ldd r21,Z+5
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	sub r20,r18
	sbc r21,r19
	call _ZNK6String11lastIndexOfERKS_j
	ret
	.size	_ZNK6String11lastIndexOfERKS_, .-_ZNK6String11lastIndexOfERKS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.section	.text._ZNK6String9substringEjj,"ax",@progbits
.global	_ZNK6String9substringEjj
	.type	_ZNK6String9substringEjj, @function
_ZNK6String9substringEjj:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 9) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	movw r12,r24
	movw r14,r22
	movw r28,r20
	movw r16,r18
	cp r18,r20
	cpc r19,r21
	brsh .L215
	mov r24,r29
	movw r28,r18
	mov r16,r20
	mov r17,r24
.L215:
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	movw r24,r12
	call _ZN6StringC1EPKc
	movw r26,r14
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	cp r24,r28
	cpc r25,r29
	brlo .L214
	cp r24,r16
	cpc r25,r17
	brsh .L217
	movw r16,r24
.L217:
	movw r26,r14
	ld r30,X+
	ld r31,X
	sbiw r26,1
	add r30,r16
	adc r31,r17
	ld r11,Z
	st Z,__zero_reg__
	ld r22,X+
	ld r23,X
	add r22,r28
	adc r23,r29
	movw r24,r12
	call _ZN6StringaSEPKc
	movw r26,r14
	ld r30,X+
	ld r31,X
	add r30,r16
	adc r31,r17
	st Z,r11
.L214:
	movw r24,r12
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(9)
	jmp __epilogue_restores__ + ((18 - 9) * 2)
	.size	_ZNK6String9substringEjj, .-_ZNK6String9substringEjj
	.section	.text._ZNK6String9substringEj,"ax",@progbits
.global	_ZNK6String9substringEj
	.type	_ZNK6String9substringEj, @function
_ZNK6String9substringEj:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	movw r30,r22
	ldd r18,Z+4
	ldd r19,Z+5
	call _ZNK6String9substringEjj
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZNK6String9substringEj, .-_ZNK6String9substringEj
	.section	.text._ZN6String7replaceEcc,"ax",@progbits
.global	_ZN6String7replaceEcc
	.type	_ZN6String7replaceEcc, @function
_ZN6String7replaceEcc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r26,r24
	ld r30,X+
	ld r31,X
	sbiw r30,0
	brne .L228
	ret
.L224:
	cpse r24,r22
	rjmp .L223
	st Z,r20
.L223:
	adiw r30,1
.L228:
	ld r24,Z
	cpse r24,__zero_reg__
	rjmp .L224
	ret
	.size	_ZN6String7replaceEcc, .-_ZN6String7replaceEcc
	.section	.text._ZN6String7replaceERKS_S1_,"ax",@progbits
.global	_ZN6String7replaceERKS_S1_
	.type	_ZN6String7replaceERKS_S1_, @function
_ZN6String7replaceERKS_S1_:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 18) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	movw r16,r24
	movw r10,r22
	movw r14,r20
	movw r26,r24
	adiw r26,4
	ld r4,X+
	ld r5,X
	sbiw r26,4+1
	cp r4,__zero_reg__
	cpc r5,__zero_reg__
	brne .+2
	rjmp .L229
	movw r30,r22
	ldd r6,Z+4
	ldd r7,Z+5
	cp r6,__zero_reg__
	cpc r7,__zero_reg__
	brne .+2
	rjmp .L229
	movw r26,r20
	adiw r26,4
	ld r12,X+
	ld r13,X
	sbiw r26,4+1
	sub r12,r6
	sbc r13,r7
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	cp r12,__zero_reg__
	cpc r13,__zero_reg__
	brne .L233
	rjmp .L250
.L235:
	movw r26,r14
	ld r22,X
	adiw r26,1
	ld r23,X
	sbiw r26,1
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	movw r24,r16
	call memcpy
	movw r30,r14
	ldd r28,Z+4
	ldd r29,Z+5
	add r28,r16
	adc r29,r17
.L250:
	movw r26,r10
	ld r22,X+
	ld r23,X
	movw r24,r28
	call strstr
	movw r16,r24
	sbiw r24,0
	brne .L235
	rjmp .L229
.L233:
	sbrs r13,7
	rjmp .L236
	movw r8,r28
	rjmp .L237
.L236:
	movw r30,r22
	ld r2,Z
	ldd r3,Z+1
	movw r8,r4
	rjmp .L238
.L239:
	movw r6,r4
	sub r6,r28
	sbc r7,r29
	movw r20,r6
	movw r22,r28
	movw r24,r8
	call memcpy
	add r6,r8
	adc r7,r9
	movw r26,r14
	ld r22,X
	adiw r26,1
	ld r23,X
	sbiw r26,1
	adiw r26,4
	ld r20,X+
	ld r21,X
	sbiw r26,4+1
	movw r24,r6
	call memcpy
	movw r30,r14
	ldd r8,Z+4
	ldd r9,Z+5
	add r8,r6
	adc r9,r7
	movw r26,r10
	adiw r26,4
	ld r28,X+
	ld r29,X
	sbiw r26,4+1
	add r28,r4
	adc r29,r5
	movw r30,r16
	ldd r24,Z+4
	ldd r25,Z+5
	add r24,r12
	adc r25,r13
	std Z+5,r25
	std Z+4,r24
.L237:
	movw r26,r10
	ld r22,X+
	ld r23,X
	movw r24,r28
	call strstr
	movw r4,r24
	sbiw r24,0
	brne .L239
	movw r22,r28
	movw r24,r8
	call strcpy
	rjmp .L229
.L240:
	movw r28,r24
	add r28,r6
	adc r29,r7
	add r8,r12
	adc r9,r13
.L238:
	movw r22,r2
	movw r24,r28
	call strstr
	sbiw r24,0
	brne .L240
	cp r8,r4
	cpc r9,r5
	brne .+2
	rjmp .L229
	movw r30,r16
	ldd r24,Z+2
	ldd r25,Z+3
	cp r24,r8
	cpc r25,r9
	brsh .L241
	movw r22,r8
	movw r24,r16
	call _ZN6String12changeBufferEj
	tst r24
	brne .+2
	rjmp .L229
	rjmp .L241
.L243:
	sbrc r25,7
	rjmp .L229
	movw r20,r24
	movw r22,r10
	movw r24,r16
	call _ZNK6String11lastIndexOfERKS_j
	movw r28,r24
	sbrs r25,7
	rjmp .L242
	rjmp .L229
.L241:
	movw r26,r16
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	rjmp .L251
.L242:
	movw r30,r16
	ld r24,Z
	ldd r25,Z+1
	movw r26,r10
	adiw r26,4
	ld r18,X+
	ld r19,X
	sbiw r26,4+1
	add r18,r28
	adc r19,r29
	add r24,r18
	adc r25,r19
	ldd r20,Z+4
	ldd r21,Z+5
	sub r20,r18
	sbc r21,r19
	movw r22,r24
	add r24,r12
	adc r25,r13
	call memmove
	movw r30,r16
	ldd r24,Z+4
	ldd r25,Z+5
	add r24,r12
	adc r25,r13
	std Z+5,r25
	std Z+4,r24
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	movw r26,r16
	ld r18,X+
	ld r19,X
	add r18,r28
	adc r19,r29
	movw r30,r14
	ld r22,Z
	ldd r23,Z+1
	ldd r20,Z+4
	ldd r21,Z+5
	movw r24,r18
	call memcpy
	movw r24,r28
.L251:
	sbiw r24,1
	rjmp .L243
.L229:
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(18)
	jmp __epilogue_restores__ + ((18 - 18) * 2)
	.size	_ZN6String7replaceERKS_S1_, .-_ZN6String7replaceERKS_S1_
	.section	.text._ZN6String11toLowerCaseEv,"ax",@progbits
.global	_ZN6String11toLowerCaseEv
	.type	_ZN6String11toLowerCaseEv, @function
_ZN6String11toLowerCaseEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	sbiw r28,0
	brne .L259
	rjmp .L252
.L255:
	ldi r25,0
	call tolower
	st Y+,r24
.L259:
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L255
.L252:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String11toLowerCaseEv, .-_ZN6String11toLowerCaseEv
	.section	.text._ZN6String11toUpperCaseEv,"ax",@progbits
.global	_ZN6String11toUpperCaseEv
	.type	_ZN6String11toUpperCaseEv, @function
_ZN6String11toUpperCaseEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ld r28,Z
	ldd r29,Z+1
	sbiw r28,0
	brne .L267
	rjmp .L260
.L263:
	ldi r25,0
	call toupper
	st Y+,r24
.L267:
	ld r24,Y
	cpse r24,__zero_reg__
	rjmp .L263
.L260:
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6String11toUpperCaseEv, .-_ZN6String11toUpperCaseEv
	.section	.text._ZN6String4trimEv,"ax",@progbits
.global	_ZN6String4trimEv
	.type	_ZN6String4trimEv, @function
_ZN6String4trimEv:
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
	movw r12,r24
	movw r26,r24
	ld r14,X+
	ld r15,X
	sbiw r26,1
	cp r14,__zero_reg__
	cpc r15,__zero_reg__
	brne .+2
	rjmp .L268
	adiw r26,4
	ld r16,X+
	ld r17,X
	sbiw r26,4+1
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L268
	movw r10,r14
.L270:
	movw r28,r10
	ldi r27,-1
	sub r10,r27
	sbc r11,r27
	ld r24,Y
	ldi r25,0
	call isspace
	or r24,r25
	brne .L270
	subi r16,1
	sbc r17,__zero_reg__
	add r16,r14
	adc r17,r15
.L276:
	movw r30,r16
	ld r24,Z
	ldi r25,0
	call isspace
	or r24,r25
	brne .L271
.L275:
	subi r16,-1
	sbci r17,-1
	sub r16,r28
	sbc r17,r29
	movw r26,r12
	adiw r26,4+1
	st X,r17
	st -X,r16
	sbiw r26,4
	cp r14,r28
	cpc r15,r29
	brsh .L273
	rjmp .L272
.L271:
	cp r16,r28
	cpc r17,r29
	brsh .L274
	rjmp .L275
.L272:
	movw r20,r16
	movw r22,r28
	movw r24,r14
	call memcpy
.L273:
	movw r26,r12
	ld r30,X+
	ld r31,X
	sbiw r26,1
	adiw r26,4
	ld r24,X+
	ld r25,X
	sbiw r26,4+1
	add r30,r24
	adc r31,r25
	st Z,__zero_reg__
	rjmp .L268
.L274:
	subi r16,1
	sbc r17,__zero_reg__
	rjmp .L276
.L268:
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(10)
	jmp __epilogue_restores__ + ((18 - 10) * 2)
	.size	_ZN6String4trimEv, .-_ZN6String4trimEv
	.section	.text._ZNK6String5toIntEv,"ax",@progbits
.global	_ZNK6String5toIntEv
	.type	_ZNK6String5toIntEv, @function
_ZNK6String5toIntEv:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ld r24,Z
	ldd r25,Z+1
	sbiw r24,0
	breq .L286
	call atol
	movw r16,r22
	movw r18,r24
	rjmp .L285
.L286:
	ldi r16,0
	ldi r17,0
	movw r18,r16
.L285:
	movw r22,r16
	movw r24,r18
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZNK6String5toIntEv, .-_ZNK6String5toIntEv
	.section	.bss._ZZN6StringixEjE19dummy_writable_char,"aw",@nobits
	.type	_ZZN6StringixEjE19dummy_writable_char, @object
	.size	_ZZN6StringixEjE19dummy_writable_char, 1
_ZZN6StringixEjE19dummy_writable_char:
	.zero	1
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
.global __do_clear_bss
