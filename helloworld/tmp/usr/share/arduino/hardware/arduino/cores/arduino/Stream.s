	.file	"Stream.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZN6Stream9timedReadEv,"ax",@progbits
.global	_ZN6Stream9timedReadEv
	.type	_ZN6Stream9timedReadEv, @function
_ZN6Stream9timedReadEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call millis
	std Y+8,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
.L3:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r28
	icall
	movw r18,r24
	sbrs r25,7
	rjmp .L2
	call millis
	ldd r16,Y+8
	ldd r17,Y+9
	ldd r18,Y+10
	ldd r19,Y+11
	sub r22,r16
	sbc r23,r17
	sbc r24,r18
	sbc r25,r19
	ldd r16,Y+4
	ldd r17,Y+5
	ldd r18,Y+6
	ldd r19,Y+7
	cp r22,r16
	cpc r23,r17
	cpc r24,r18
	cpc r25,r19
	brlo .L3
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
.L2:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6Stream9timedReadEv, .-_ZN6Stream9timedReadEv
	.section	.text._ZN6Stream9timedPeekEv,"ax",@progbits
.global	_ZN6Stream9timedPeekEv
	.type	_ZN6Stream9timedPeekEv, @function
_ZN6Stream9timedPeekEv:
	push r16
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 4 */
.L__stack_usage = 4
	movw r28,r24
	call millis
	std Y+8,r22
	std Y+9,r23
	std Y+10,r24
	std Y+11,r25
.L7:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+8
	ldd r31,Z+9
	mov r30,__tmp_reg__
	movw r24,r28
	icall
	movw r18,r24
	sbrs r25,7
	rjmp .L6
	call millis
	ldd r16,Y+8
	ldd r17,Y+9
	ldd r18,Y+10
	ldd r19,Y+11
	sub r22,r16
	sbc r23,r17
	sbc r24,r18
	sbc r25,r19
	ldd r16,Y+4
	ldd r17,Y+5
	ldd r18,Y+6
	ldd r19,Y+7
	cp r22,r16
	cpc r23,r17
	cpc r24,r18
	cpc r25,r19
	brlo .L7
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
.L6:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6Stream9timedPeekEv, .-_ZN6Stream9timedPeekEv
	.section	.text._ZN6Stream13peekNextDigitEv,"ax",@progbits
.global	_ZN6Stream13peekNextDigitEv
	.type	_ZN6Stream13peekNextDigitEv, @function
_ZN6Stream13peekNextDigitEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
.L11:
	movw r24,r28
	call _ZN6Stream9timedPeekEv
	movw r18,r24
	sbrc r25,7
	rjmp .L10
	cpi r24,45
	cpc r25,__zero_reg__
	breq .L10
	sbiw r24,48
	sbiw r24,10
	brlo .L10
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r28
	icall
	rjmp .L11
.L10:
	movw r24,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN6Stream13peekNextDigitEv, .-_ZN6Stream13peekNextDigitEv
	.section	.text._ZN6Stream10setTimeoutEm,"ax",@progbits
.global	_ZN6Stream10setTimeoutEm
	.type	_ZN6Stream10setTimeoutEm, @function
_ZN6Stream10setTimeoutEm:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	std Z+4,r20
	std Z+5,r21
	std Z+6,r22
	std Z+7,r23
	ret
	.size	_ZN6Stream10setTimeoutEm, .-_ZN6Stream10setTimeoutEm
	.section	.text._ZN6Stream9findUntilEPcjS0_j,"ax",@progbits
.global	_ZN6Stream9findUntilEPcjS0_j
	.type	_ZN6Stream9findUntilEPcjS0_j, @function
_ZN6Stream9findUntilEPcjS0_j:
	ldi r26,0
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 14) * 2)
1:
/* prologue: function */
/* frame size = 0 */
/* stack size = 14 */
.L__stack_usage = 14
	movw r10,r24
	movw r12,r22
	movw r8,r20
	movw r6,r18
	movw r30,r22
	ld r24,Z
	tst r24
	breq .L24
	mov r14,__zero_reg__
	mov r15,__zero_reg__
	ldi r28,0
	ldi r29,0
	rjmp .L30
.L23:
	movw r30,r12
	add r30,r28
	adc r31,r29
	ld r18,Z
	ldi r19,0
	cp r24,r18
	cpc r25,r19
	breq .L19
	ldi r28,0
	ldi r29,0
.L19:
	movw r30,r12
	add r30,r28
	adc r31,r29
	ld r18,Z
	ldi r19,0
	cp r24,r18
	cpc r25,r19
	brne .L20
	adiw r28,1
	cp r28,r8
	cpc r29,r9
	brsh .L24
.L20:
	cp r16,__zero_reg__
	cpc r17,__zero_reg__
	breq .L28
	movw r30,r6
	add r30,r14
	adc r31,r15
	ld r18,Z
	ldi r19,0
	cp r24,r18
	cpc r25,r19
	brne .L28
	ldi r31,-1
	sub r14,r31
	sbc r15,r31
	cp r14,r16
	cpc r15,r17
	brlo .L30
	rjmp .L29
.L28:
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L30:
	movw r24,r10
	call _ZN6Stream9timedReadEv
	cp __zero_reg__,r24
	cpc __zero_reg__,r25
	brlt .L23
.L29:
	ldi r24,0
	rjmp .L17
.L24:
	ldi r24,lo8(1)
.L17:
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(14)
	jmp __epilogue_restores__ + ((18 - 14) * 2)
	.size	_ZN6Stream9findUntilEPcjS0_j, .-_ZN6Stream9findUntilEPcjS0_j
	.section	.text._ZN6Stream9findUntilEPcS0_,"ax",@progbits
.global	_ZN6Stream9findUntilEPcS0_
	.type	_ZN6Stream9findUntilEPcS0_, @function
_ZN6Stream9findUntilEPcS0_:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r18,r20
	movw r26,r20
	0:
	ld __tmp_reg__,X+
	tst __tmp_reg__
	brne 0b
	movw r16,r26
	subi r16,1
	sbc r17,__zero_reg__
	sub r16,r20
	sbc r17,r21
	movw r30,r22
	0:
	ld __tmp_reg__,Z+
	tst __tmp_reg__
	brne 0b
	movw r20,r30
	subi r20,1
	sbc r21,__zero_reg__
	sub r20,r22
	sbc r21,r23
	call _ZN6Stream9findUntilEPcjS0_j
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZN6Stream9findUntilEPcS0_, .-_ZN6Stream9findUntilEPcS0_
	.section	.text._ZN6Stream4findEPc,"ax",@progbits
.global	_ZN6Stream4findEPc
	.type	_ZN6Stream4findEPc, @function
_ZN6Stream4findEPc:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,0
	ldi r21,0
	call _ZN6Stream9findUntilEPcS0_
	ret
	.size	_ZN6Stream4findEPc, .-_ZN6Stream4findEPc
	.section	.text._ZN6Stream4findEPcj,"ax",@progbits
.global	_ZN6Stream4findEPcj
	.type	_ZN6Stream4findEPcj, @function
_ZN6Stream4findEPcj:
	push r16
	push r17
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r16,0
	ldi r17,0
	ldi r18,0
	ldi r19,0
	call _ZN6Stream9findUntilEPcjS0_j
/* epilogue start */
	pop r17
	pop r16
	ret
	.size	_ZN6Stream4findEPcj, .-_ZN6Stream4findEPcj
	.section	.text._ZN6Stream8parseIntEc,"ax",@progbits
.global	_ZN6Stream8parseIntEc
	.type	_ZN6Stream8parseIntEc, @function
_ZN6Stream8parseIntEc:
	push r12
	push r13
	push r15
	push r16
	push r17
	push r28
	push r29
	rcall .
	rcall .
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 4 */
/* stack size = 11 */
.L__stack_usage = 11
	movw r12,r24
	mov r16,r22
	call _ZN6Stream13peekNextDigitEv
	movw r30,r24
	ldi r18,0
	ldi r19,0
	movw r20,r18
	sbrc r25,7
	rjmp .L35
	mov r15,__zero_reg__
	ldi r17,0
.L46:
	cp r30,r16
	cpc r31,r17
	breq .L37
	cpi r30,45
	cpc r31,__zero_reg__
	breq .L40
	movw r24,r30
	sbiw r24,48
	sbiw r24,10
	brsh .L37
	ldi r26,lo8(10)
	ldi r27,0
	call __muluhisi3
	movw r18,r22
	movw r20,r24
	movw r24,r30
	clr r26
	sbrc r25,7
	com r26
	mov r27,r26
	add r18,r24
	adc r19,r25
	adc r20,r26
	adc r21,r27
	subi r18,48
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	rjmp .L37
.L40:
	clr r15
	inc r15
.L37:
	movw r26,r12
	ld r30,X+
	ld r31,X
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r12
	std Y+1,r18
	std Y+2,r19
	std Y+3,r20
	std Y+4,r21
	icall
	movw r24,r12
	call _ZN6Stream9timedPeekEv
	movw r30,r24
	sbiw r24,48
	ldd r18,Y+1
	ldd r19,Y+2
	ldd r20,Y+3
	ldd r21,Y+4
	sbiw r24,10
	brlo .L46
	cp r30,r16
	cpc r31,r17
	breq .L46
	tst r15
	breq .L35
	com r21
	com r20
	com r19
	neg r18
	sbci r19,lo8(-1)
	sbci r20,lo8(-1)
	sbci r21,lo8(-1)
.L35:
	movw r22,r18
	movw r24,r20
/* epilogue start */
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r13
	pop r12
	ret
	.size	_ZN6Stream8parseIntEc, .-_ZN6Stream8parseIntEc
	.section	.text._ZN6Stream8parseIntEv,"ax",@progbits
.global	_ZN6Stream8parseIntEv
	.type	_ZN6Stream8parseIntEv, @function
_ZN6Stream8parseIntEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	call _ZN6Stream8parseIntEc
	ret
	.size	_ZN6Stream8parseIntEv, .-_ZN6Stream8parseIntEv
.global	__mulsf3
.global	__floatsisf
	.section	.text._ZN6Stream10parseFloatEc,"ax",@progbits
.global	_ZN6Stream10parseFloatEc
	.type	_ZN6Stream10parseFloatEc, @function
_ZN6Stream10parseFloatEc:
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
	mov r8,r22
	call _ZN6Stream13peekNextDigitEv
	mov r30,r24
	mov r10,__zero_reg__
	mov r11,__zero_reg__
	ldi r16,lo8(-128)
	ldi r17,lo8(63)
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
	mov r7,__zero_reg__
	mov r9,__zero_reg__
.L68:
	cp r30,r8
	breq .L50
	cpi r30,lo8(45)
	breq .L55
	cpi r30,lo8(46)
	breq .L56
	mov r24,r30
	subi r24,lo8(-(-48))
	cpi r24,lo8(10)
	brsh .L50
	ldi r26,lo8(10)
	ldi r27,0
	movw r20,r14
	movw r18,r12
	call __muluhisi3
	movw r12,r22
	movw r14,r24
	add r12,r30
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
	ldi r24,48
	sub r12,r24
	sbc r13,__zero_reg__
	sbc r14,__zero_reg__
	sbc r15,__zero_reg__
	tst r7
	breq .L50
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(-52)
	ldi r21,lo8(61)
	mov r22,r10
	mov r23,r11
	mov r24,r16
	mov r25,r17
	call __mulsf3
	movw r10,r22
	movw r16,r24
	rjmp .L56
.L55:
	clr r9
	inc r9
	rjmp .L50
.L56:
	clr r7
	inc r7
.L50:
	ld r30,Y
	ldd r31,Y+1
	ldd __tmp_reg__,Z+6
	ldd r31,Z+7
	mov r30,__tmp_reg__
	movw r24,r28
	icall
	movw r24,r28
	call _ZN6Stream9timedPeekEv
	mov r30,r24
	mov r25,r24
	subi r25,lo8(-(-48))
	cpi r25,lo8(10)
	brlo .L68
	cpi r24,lo8(46)
	brne .+2
	rjmp .L68
	cp r24,r8
	brne .+2
	rjmp .L68
	tst r9
	breq .L52
	com r15
	com r14
	com r13
	com r12
	adc r12,__zero_reg__
	adc r13,__zero_reg__
	adc r14,__zero_reg__
	adc r15,__zero_reg__
.L52:
	movw r24,r14
	movw r22,r12
	tst r7
	breq .L53
	call __floatsisf
	mov r18,r10
	mov r19,r11
	mov r20,r16
	mov r21,r17
	call __mulsf3
	rjmp .L54
.L53:
	call __floatsisf
.L54:
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(13)
	jmp __epilogue_restores__ + ((18 - 13) * 2)
	.size	_ZN6Stream10parseFloatEc, .-_ZN6Stream10parseFloatEc
	.section	.text._ZN6Stream10parseFloatEv,"ax",@progbits
.global	_ZN6Stream10parseFloatEv
	.type	_ZN6Stream10parseFloatEv, @function
_ZN6Stream10parseFloatEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	call _ZN6Stream10parseFloatEc
	ret
	.size	_ZN6Stream10parseFloatEv, .-_ZN6Stream10parseFloatEv
	.section	.text._ZN6Stream9readBytesEPcj,"ax",@progbits
.global	_ZN6Stream9readBytesEPcj
	.type	_ZN6Stream9readBytesEPcj, @function
_ZN6Stream9readBytesEPcj:
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
	movw r14,r24
	movw r16,r22
	movw r12,r20
	ldi r28,0
	ldi r29,0
	rjmp .L71
.L73:
	movw r24,r14
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L75
	movw r30,r16
	st Z+,r24
	movw r16,r30
	adiw r28,1
.L71:
	cp r28,r12
	cpc r29,r13
	brne .L73
.L75:
	movw r24,r28
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(8)
	jmp __epilogue_restores__ + ((18 - 8) * 2)
	.size	_ZN6Stream9readBytesEPcj, .-_ZN6Stream9readBytesEPcj
	.section	.text._ZN6Stream14readBytesUntilEcPcj,"ax",@progbits
.global	_ZN6Stream14readBytesUntilEcPcj
	.type	_ZN6Stream14readBytesUntilEcPcj, @function
_ZN6Stream14readBytesUntilEcPcj:
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
	movw r16,r20
	movw r14,r18
	ldi r28,0
	ldi r29,0
	cp r18,__zero_reg__
	cpc r19,__zero_reg__
	breq .L77
	mov r10,r22
	mov r11,__zero_reg__
.L78:
	movw r24,r12
	call _ZN6Stream9timedReadEv
	sbrc r25,7
	rjmp .L77
	cp r24,r10
	cpc r25,r11
	breq .L77
	movw r30,r16
	st Z+,r24
	movw r16,r30
	adiw r28,1
	cp r28,r14
	cpc r29,r15
	brne .L78
.L77:
	movw r24,r28
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(10)
	jmp __epilogue_restores__ + ((18 - 10) * 2)
	.size	_ZN6Stream14readBytesUntilEcPcj, .-_ZN6Stream14readBytesUntilEcPcj
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	""
	.section	.text._ZN6Stream10readStringEv,"ax",@progbits
.global	_ZN6Stream10readStringEv
	.type	_ZN6Stream10readStringEv, @function
_ZN6Stream10readStringEv:
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
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN6StringC1EPKc
	rjmp .L84
.L83:
	mov r22,r24
	movw r24,r28
	call _ZN6String6concatEc
.L84:
	movw r24,r16
	call _ZN6Stream9timedReadEv
	sbrs r25,7
	rjmp .L83
	movw r24,r28
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	ret
	.size	_ZN6Stream10readStringEv, .-_ZN6Stream10readStringEv
	.section	.text._ZN6Stream15readStringUntilEc,"ax",@progbits
.global	_ZN6Stream15readStringUntilEc
	.type	_ZN6Stream15readStringUntilEc, @function
_ZN6Stream15readStringUntilEc:
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
	movw r16,r22
	mov r14,r20
	ldi r22,lo8(.LC0)
	ldi r23,hi8(.LC0)
	call _ZN6StringC1EPKc
	movw r24,r16
	call _ZN6Stream9timedReadEv
	mov r15,__zero_reg__
.L88:
	sbrc r25,7
	rjmp .L85
	cp r24,r14
	cpc r25,r15
	breq .L85
	mov r22,r24
	movw r24,r28
	call _ZN6String6concatEc
	movw r24,r16
	call _ZN6Stream9timedReadEv
	rjmp .L88
.L85:
	movw r24,r28
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(6)
	jmp __epilogue_restores__ + ((18 - 6) * 2)
	.size	_ZN6Stream15readStringUntilEc, .-_ZN6Stream15readStringUntilEc
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
