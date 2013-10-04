	.file	"LiquidCrystal.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZN13LiquidCrystal11pulseEnableEv,"ax",@progbits
.global	_ZN13LiquidCrystal11pulseEnableEv
	.type	_ZN13LiquidCrystal11pulseEnableEv, @function
_ZN13LiquidCrystal11pulseEnableEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	ldi r22,0
	ldd r24,Y+6
	call digitalWrite
	ldi r24,lo8(1)
	ldi r25,0
	call delayMicroseconds
	ldi r22,lo8(1)
	ldd r24,Y+6
	call digitalWrite
	ldi r24,lo8(1)
	ldi r25,0
	call delayMicroseconds
	ldi r22,0
	ldd r24,Y+6
	call digitalWrite
	ldi r24,lo8(100)
	ldi r25,0
	call delayMicroseconds
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN13LiquidCrystal11pulseEnableEv, .-_ZN13LiquidCrystal11pulseEnableEv
	.section	.text._ZN13LiquidCrystal10write4bitsEh,"ax",@progbits
.global	_ZN13LiquidCrystal10write4bitsEh
	.type	_ZN13LiquidCrystal10write4bitsEh, @function
_ZN13LiquidCrystal10write4bitsEh:
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
	ldi r28,0
	ldi r29,0
	mov r12,r22
	mov r13,__zero_reg__
.L3:
	movw r16,r14
	add r16,r28
	adc r17,r29
	ldi r22,lo8(1)
	movw r30,r16
	ldd r24,Z+7
	call pinMode
	movw r22,r12
	mov r0,r28
	rjmp 2f
	1:
	asr r23
	ror r22
	2:
	dec r0
	brpl 1b
	andi r22,1
	clr r23
	movw r30,r16
	ldd r24,Z+7
	call digitalWrite
	adiw r28,1
	cpi r28,4
	cpc r29,__zero_reg__
	brne .L3
	movw r24,r14
	call _ZN13LiquidCrystal11pulseEnableEv
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(8)
	jmp __epilogue_restores__ + ((18 - 8) * 2)
	.size	_ZN13LiquidCrystal10write4bitsEh, .-_ZN13LiquidCrystal10write4bitsEh
	.section	.text._ZN13LiquidCrystal10write8bitsEh,"ax",@progbits
.global	_ZN13LiquidCrystal10write8bitsEh
	.type	_ZN13LiquidCrystal10write8bitsEh, @function
_ZN13LiquidCrystal10write8bitsEh:
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
	ldi r28,0
	ldi r29,0
	mov r12,r22
	mov r13,__zero_reg__
.L6:
	movw r16,r14
	add r16,r28
	adc r17,r29
	ldi r22,lo8(1)
	movw r30,r16
	ldd r24,Z+7
	call pinMode
	movw r22,r12
	mov r0,r28
	rjmp 2f
	1:
	asr r23
	ror r22
	2:
	dec r0
	brpl 1b
	andi r22,1
	clr r23
	movw r30,r16
	ldd r24,Z+7
	call digitalWrite
	adiw r28,1
	cpi r28,8
	cpc r29,__zero_reg__
	brne .L6
	movw r24,r14
	call _ZN13LiquidCrystal11pulseEnableEv
/* epilogue start */
	in r28,__SP_L__
	in r29,__SP_H__
	ldi r30, lo8(8)
	jmp __epilogue_restores__ + ((18 - 8) * 2)
	.size	_ZN13LiquidCrystal10write8bitsEh, .-_ZN13LiquidCrystal10write8bitsEh
	.section	.text._ZN13LiquidCrystal4sendEhh,"ax",@progbits
.global	_ZN13LiquidCrystal4sendEhh
	.type	_ZN13LiquidCrystal4sendEhh, @function
_ZN13LiquidCrystal4sendEhh:
	push r17
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r28,r24
	mov r17,r22
	mov r22,r20
	ldd r24,Y+4
	call digitalWrite
	ldd r24,Y+5
	cpi r24,lo8(-1)
	breq .L9
	ldi r22,0
	call digitalWrite
.L9:
	ldd r24,Y+15
	mov r22,r17
	sbrs r24,4
	rjmp .L10
	movw r24,r28
	call _ZN13LiquidCrystal10write8bitsEh
	rjmp .L8
.L10:
	ldi r23,0
	ldi r24,4
	1:
	asr r23
	ror r22
	dec r24
	brne 1b
	movw r24,r28
	call _ZN13LiquidCrystal10write4bitsEh
	mov r22,r17
	movw r24,r28
	call _ZN13LiquidCrystal10write4bitsEh
.L8:
/* epilogue start */
	pop r29
	pop r28
	pop r17
	ret
	.size	_ZN13LiquidCrystal4sendEhh, .-_ZN13LiquidCrystal4sendEhh
	.section	.text._ZN13LiquidCrystal5writeEh,"axG",@progbits,_ZN13LiquidCrystal5writeEh,comdat
	.weak	_ZN13LiquidCrystal5writeEh
	.type	_ZN13LiquidCrystal5writeEh, @function
_ZN13LiquidCrystal5writeEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,lo8(1)
	call _ZN13LiquidCrystal4sendEhh
	ldi r24,lo8(1)
	ldi r25,0
	ret
	.size	_ZN13LiquidCrystal5writeEh, .-_ZN13LiquidCrystal5writeEh
	.section	.text._ZN13LiquidCrystal7commandEh,"axG",@progbits,_ZN13LiquidCrystal7commandEh,comdat
	.weak	_ZN13LiquidCrystal7commandEh
	.type	_ZN13LiquidCrystal7commandEh, @function
_ZN13LiquidCrystal7commandEh:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r20,0
	call _ZN13LiquidCrystal4sendEhh
	ret
	.size	_ZN13LiquidCrystal7commandEh, .-_ZN13LiquidCrystal7commandEh
	.section	.text._ZN13LiquidCrystal10createCharEhPh,"ax",@progbits
.global	_ZN13LiquidCrystal10createCharEhPh
	.type	_ZN13LiquidCrystal10createCharEhPh, @function
_ZN13LiquidCrystal10createCharEhPh:
	ldi r26,lo8(2)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 8) * 2)
1:
/* prologue: function */
/* frame size = 2 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r16,r24
	andi r22,lo8(7)
	ldi r24,lo8(8)
	mul r22,r24
	movw r22,r0
	clr __zero_reg__
	ori r22,64
	movw r24,r16
	std Y+1,r20
	std Y+2,r21
	call _ZN13LiquidCrystal7commandEh
	ldd r20,Y+1
	mov r12,r20
	ldd r21,Y+2
	mov r13,r21
	mov r14,__zero_reg__
	mov r15,__zero_reg__
.L18:
	movw r26,r12
	ld r22,X+
	movw r12,r26
	movw r26,r16
	ld r30,X+
	ld r31,X
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	movw r24,r16
	icall
	ldi r27,-1
	sub r14,r27
	sbc r15,r27
	ldi r30,8
	cp r14,r30
	cpc r15,__zero_reg__
	brne .L18
/* epilogue start */
	adiw r28,2
	ldi r30, lo8(8)
	jmp __epilogue_restores__ + ((18 - 8) * 2)
	.size	_ZN13LiquidCrystal10createCharEhPh, .-_ZN13LiquidCrystal10createCharEhPh
	.section	.text._ZN13LiquidCrystal12noAutoscrollEv,"ax",@progbits
.global	_ZN13LiquidCrystal12noAutoscrollEv
	.type	_ZN13LiquidCrystal12noAutoscrollEv, @function
_ZN13LiquidCrystal12noAutoscrollEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+17
	andi r22,lo8(-2)
	std Z+17,r22
	ori r22,lo8(4)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal12noAutoscrollEv, .-_ZN13LiquidCrystal12noAutoscrollEv
	.section	.text._ZN13LiquidCrystal10autoscrollEv,"ax",@progbits
.global	_ZN13LiquidCrystal10autoscrollEv
	.type	_ZN13LiquidCrystal10autoscrollEv, @function
_ZN13LiquidCrystal10autoscrollEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+17
	mov r18,r22
	ori r18,lo8(1)
	std Z+17,r18
	ori r22,lo8(5)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal10autoscrollEv, .-_ZN13LiquidCrystal10autoscrollEv
	.section	.text._ZN13LiquidCrystal11rightToLeftEv,"ax",@progbits
.global	_ZN13LiquidCrystal11rightToLeftEv
	.type	_ZN13LiquidCrystal11rightToLeftEv, @function
_ZN13LiquidCrystal11rightToLeftEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+17
	andi r22,lo8(-3)
	std Z+17,r22
	ori r22,lo8(4)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal11rightToLeftEv, .-_ZN13LiquidCrystal11rightToLeftEv
	.section	.text._ZN13LiquidCrystal11leftToRightEv,"ax",@progbits
.global	_ZN13LiquidCrystal11leftToRightEv
	.type	_ZN13LiquidCrystal11leftToRightEv, @function
_ZN13LiquidCrystal11leftToRightEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+17
	mov r18,r22
	ori r18,lo8(2)
	std Z+17,r18
	ori r22,lo8(6)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal11leftToRightEv, .-_ZN13LiquidCrystal11leftToRightEv
	.section	.text._ZN13LiquidCrystal18scrollDisplayRightEv,"ax",@progbits
.global	_ZN13LiquidCrystal18scrollDisplayRightEv
	.type	_ZN13LiquidCrystal18scrollDisplayRightEv, @function
_ZN13LiquidCrystal18scrollDisplayRightEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(28)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal18scrollDisplayRightEv, .-_ZN13LiquidCrystal18scrollDisplayRightEv
	.section	.text._ZN13LiquidCrystal17scrollDisplayLeftEv,"ax",@progbits
.global	_ZN13LiquidCrystal17scrollDisplayLeftEv
	.type	_ZN13LiquidCrystal17scrollDisplayLeftEv, @function
_ZN13LiquidCrystal17scrollDisplayLeftEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(24)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal17scrollDisplayLeftEv, .-_ZN13LiquidCrystal17scrollDisplayLeftEv
	.section	.text._ZN13LiquidCrystal5blinkEv,"ax",@progbits
.global	_ZN13LiquidCrystal5blinkEv
	.type	_ZN13LiquidCrystal5blinkEv, @function
_ZN13LiquidCrystal5blinkEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+16
	mov r18,r22
	ori r18,lo8(1)
	std Z+16,r18
	ori r22,lo8(9)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal5blinkEv, .-_ZN13LiquidCrystal5blinkEv
	.section	.text._ZN13LiquidCrystal7noBlinkEv,"ax",@progbits
.global	_ZN13LiquidCrystal7noBlinkEv
	.type	_ZN13LiquidCrystal7noBlinkEv, @function
_ZN13LiquidCrystal7noBlinkEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+16
	andi r22,lo8(-2)
	std Z+16,r22
	ori r22,lo8(8)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal7noBlinkEv, .-_ZN13LiquidCrystal7noBlinkEv
	.section	.text._ZN13LiquidCrystal6cursorEv,"ax",@progbits
.global	_ZN13LiquidCrystal6cursorEv
	.type	_ZN13LiquidCrystal6cursorEv, @function
_ZN13LiquidCrystal6cursorEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+16
	mov r18,r22
	ori r18,lo8(2)
	std Z+16,r18
	ori r22,lo8(10)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal6cursorEv, .-_ZN13LiquidCrystal6cursorEv
	.section	.text._ZN13LiquidCrystal8noCursorEv,"ax",@progbits
.global	_ZN13LiquidCrystal8noCursorEv
	.type	_ZN13LiquidCrystal8noCursorEv, @function
_ZN13LiquidCrystal8noCursorEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+16
	andi r22,lo8(-3)
	std Z+16,r22
	ori r22,lo8(8)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal8noCursorEv, .-_ZN13LiquidCrystal8noCursorEv
	.section	.text._ZN13LiquidCrystal7displayEv,"ax",@progbits
.global	_ZN13LiquidCrystal7displayEv
	.type	_ZN13LiquidCrystal7displayEv, @function
_ZN13LiquidCrystal7displayEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+16
	mov r18,r22
	ori r18,lo8(4)
	std Z+16,r18
	ori r22,lo8(12)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal7displayEv, .-_ZN13LiquidCrystal7displayEv
	.section	.text._ZN13LiquidCrystal9noDisplayEv,"ax",@progbits
.global	_ZN13LiquidCrystal9noDisplayEv
	.type	_ZN13LiquidCrystal9noDisplayEv, @function
_ZN13LiquidCrystal9noDisplayEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r22,Z+16
	andi r22,lo8(-5)
	std Z+16,r22
	ori r22,lo8(8)
	call _ZN13LiquidCrystal7commandEh
	ret
	.size	_ZN13LiquidCrystal9noDisplayEv, .-_ZN13LiquidCrystal9noDisplayEv
	.section	.rodata
.LC0:
	.word	0
	.word	64
	.word	20
	.word	84
	.section	.text._ZN13LiquidCrystal9setCursorEhh,"ax",@progbits
.global	_ZN13LiquidCrystal9setCursorEhh
	.type	_ZN13LiquidCrystal9setCursorEhh, @function
_ZN13LiquidCrystal9setCursorEhh:
	ldi r26,lo8(8)
	ldi r27,0
	ldi r30,lo8(gs(1f))
	ldi r31,hi8(gs(1f))
	jmp __prologue_saves__+((18 - 2) * 2)
1:
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
	ldi r18,lo8(8)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	adiw r26,1
	0:
	ld r0,Z+
	st X+,r0
	dec r18
	brne 0b
	movw r30,r24
	ldd r18,Z+19
	cp r20,r18
	brlo .L33
	mov r20,r18
	subi r20,lo8(-(-1))
.L33:
	movw r30,r28
	adiw r30,1
	add r30,r20
	adc r31,__zero_reg__
	add r30,r20
	adc r31,__zero_reg__
	ld r18,Z
	add r18,r22
	ori r18,lo8(-128)
	mov r22,r18
	call _ZN13LiquidCrystal7commandEh
/* epilogue start */
	adiw r28,8
	ldi r30, lo8(2)
	jmp __epilogue_restores__ + ((18 - 2) * 2)
	.size	_ZN13LiquidCrystal9setCursorEhh, .-_ZN13LiquidCrystal9setCursorEhh
	.section	.text._ZN13LiquidCrystal4homeEv,"ax",@progbits
.global	_ZN13LiquidCrystal4homeEv
	.type	_ZN13LiquidCrystal4homeEv, @function
_ZN13LiquidCrystal4homeEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(2)
	call _ZN13LiquidCrystal7commandEh
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	call delayMicroseconds
	ret
	.size	_ZN13LiquidCrystal4homeEv, .-_ZN13LiquidCrystal4homeEv
	.section	.text._ZN13LiquidCrystal5clearEv,"ax",@progbits
.global	_ZN13LiquidCrystal5clearEv
	.type	_ZN13LiquidCrystal5clearEv, @function
_ZN13LiquidCrystal5clearEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	call _ZN13LiquidCrystal7commandEh
	ldi r24,lo8(-48)
	ldi r25,lo8(7)
	call delayMicroseconds
	ret
	.size	_ZN13LiquidCrystal5clearEv, .-_ZN13LiquidCrystal5clearEv
	.section	.text._ZN13LiquidCrystal5beginEhhh,"ax",@progbits
.global	_ZN13LiquidCrystal5beginEhhh
	.type	_ZN13LiquidCrystal5beginEhhh, @function
_ZN13LiquidCrystal5beginEhhh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	cpi r20,lo8(2)
	brlo .L37
	ldd r24,Y+15
	ori r24,lo8(8)
	std Y+15,r24
.L37:
	std Y+19,r20
	std Y+20,__zero_reg__
	tst r18
	breq .L38
	cpi r20,lo8(1)
	brne .L38
	ldd r24,Y+15
	ori r24,lo8(4)
	std Y+15,r24
.L38:
	ldi r24,lo8(80)
	ldi r25,lo8(-61)
	call delayMicroseconds
	ldi r22,0
	ldd r24,Y+4
	call digitalWrite
	ldi r22,0
	ldd r24,Y+6
	call digitalWrite
	ldd r24,Y+5
	cpi r24,lo8(-1)
	breq .L39
	ldi r22,0
	call digitalWrite
.L39:
	ldd r22,Y+15
	sbrc r22,4
	rjmp .L40
	ldi r22,lo8(3)
	movw r24,r28
	call _ZN13LiquidCrystal10write4bitsEh
	ldi r24,lo8(-108)
	ldi r25,lo8(17)
	call delayMicroseconds
	ldi r22,lo8(3)
	movw r24,r28
	call _ZN13LiquidCrystal10write4bitsEh
	ldi r24,lo8(-108)
	ldi r25,lo8(17)
	call delayMicroseconds
	ldi r22,lo8(3)
	movw r24,r28
	call _ZN13LiquidCrystal10write4bitsEh
	ldi r24,lo8(-106)
	ldi r25,0
	call delayMicroseconds
	ldi r22,lo8(2)
	movw r24,r28
	call _ZN13LiquidCrystal10write4bitsEh
	rjmp .L41
.L40:
	ori r22,lo8(32)
	movw r24,r28
	call _ZN13LiquidCrystal7commandEh
	ldi r24,lo8(-108)
	ldi r25,lo8(17)
	call delayMicroseconds
	ldd r22,Y+15
	ori r22,lo8(32)
	movw r24,r28
	call _ZN13LiquidCrystal7commandEh
	ldi r24,lo8(-106)
	ldi r25,0
	call delayMicroseconds
	ldd r22,Y+15
	ori r22,lo8(32)
	movw r24,r28
	call _ZN13LiquidCrystal7commandEh
.L41:
	ldd r22,Y+15
	ori r22,lo8(32)
	movw r24,r28
	call _ZN13LiquidCrystal7commandEh
	ldi r24,lo8(4)
	std Y+16,r24
	movw r24,r28
	call _ZN13LiquidCrystal7displayEv
	movw r24,r28
	call _ZN13LiquidCrystal5clearEv
	ldi r24,lo8(2)
	std Y+17,r24
	ldi r22,lo8(6)
	movw r24,r28
	call _ZN13LiquidCrystal7commandEh
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN13LiquidCrystal5beginEhhh, .-_ZN13LiquidCrystal5beginEhhh
	.section	.text._ZN13LiquidCrystal4initEhhhhhhhhhhhh,"ax",@progbits
.global	_ZN13LiquidCrystal4initEhhhhhhhhhhhh
	.type	_ZN13LiquidCrystal4initEhhhhhhhhhhhh, @function
_ZN13LiquidCrystal4initEhhhhhhhhhhhh:
	push r6
	push r7
	push r8
	push r10
	push r12
	push r14
	push r16
	push r17
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	movw r6,r24
	mov r17,r22
	mov r24,r20
	movw r30,r6
	std Z+4,r20
	std Z+5,r18
	std Z+6,r16
	std Z+7,r14
	std Z+8,r12
	std Z+9,r10
	std Z+10,r8
	ldd r25,Y+13
	std Z+11,r25
	ldd r25,Y+14
	std Z+12,r25
	ldd r25,Y+15
	std Z+13,r25
	ldd r25,Y+16
	std Z+14,r25
	ldi r22,lo8(1)
	call pinMode
	movw r30,r6
	ldd r24,Z+5
	cpi r24,lo8(-1)
	breq .L49
	ldi r22,lo8(1)
	call pinMode
.L49:
	ldi r22,lo8(1)
	movw r30,r6
	ldd r24,Z+6
	call pinMode
	tst r17
	breq .L50
	movw r30,r6
	std Z+15,__zero_reg__
	rjmp .L51
.L50:
	ldi r24,lo8(16)
	movw r30,r6
	std Z+15,r24
.L51:
	ldi r18,0
	ldi r20,lo8(1)
	ldi r22,lo8(16)
	movw r24,r6
	call _ZN13LiquidCrystal5beginEhhh
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r14
	pop r12
	pop r10
	pop r8
	pop r7
	pop r6
	ret
	.size	_ZN13LiquidCrystal4initEhhhhhhhhhhhh, .-_ZN13LiquidCrystal4initEhhhhhhhhhhhh
	.section	.text._ZN13LiquidCrystalC2Ehhhhhh,"ax",@progbits
.global	_ZN13LiquidCrystalC2Ehhhhhh
	.type	_ZN13LiquidCrystalC2Ehhhhhh, @function
_ZN13LiquidCrystalC2Ehhhhhh:
	push r8
	push r10
	push r12
	push r14
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r26,r24
	adiw r26,2+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,2
	ldi r30,lo8(_ZTV13LiquidCrystal+4)
	ldi r31,hi8(_ZTV13LiquidCrystal+4)
	st X+,r30
	st X,r31
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	mov r8,r12
	mov r10,r14
	mov r12,r16
	mov r14,r18
	mov r16,r20
	ldi r18,lo8(-1)
	mov r20,r22
	ldi r22,lo8(1)
	call _ZN13LiquidCrystal4initEhhhhhhhhhhhh
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r16
	pop r14
	pop r12
	pop r10
	pop r8
	ret
	.size	_ZN13LiquidCrystalC2Ehhhhhh, .-_ZN13LiquidCrystalC2Ehhhhhh
.global	_ZN13LiquidCrystalC1Ehhhhhh
	.set	_ZN13LiquidCrystalC1Ehhhhhh,_ZN13LiquidCrystalC2Ehhhhhh
	.section	.text._ZN13LiquidCrystalC2Ehhhhhhh,"ax",@progbits
.global	_ZN13LiquidCrystalC2Ehhhhhhh
	.type	_ZN13LiquidCrystalC2Ehhhhhhh, @function
_ZN13LiquidCrystalC2Ehhhhhhh:
	push r8
	push r10
	push r12
	push r14
	push r16
/* prologue: function */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	movw r26,r24
	adiw r26,2+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,2
	ldi r30,lo8(_ZTV13LiquidCrystal+4)
	ldi r31,hi8(_ZTV13LiquidCrystal+4)
	st X+,r30
	st X,r31
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	push __zero_reg__
	mov r8,r10
	mov r10,r12
	mov r12,r14
	mov r14,r16
	mov r16,r18
	mov r18,r20
	mov r20,r22
	ldi r22,lo8(1)
	call _ZN13LiquidCrystal4initEhhhhhhhhhhhh
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r16
	pop r14
	pop r12
	pop r10
	pop r8
	ret
	.size	_ZN13LiquidCrystalC2Ehhhhhhh, .-_ZN13LiquidCrystalC2Ehhhhhhh
.global	_ZN13LiquidCrystalC1Ehhhhhhh
	.set	_ZN13LiquidCrystalC1Ehhhhhhh,_ZN13LiquidCrystalC2Ehhhhhhh
	.section	.text._ZN13LiquidCrystalC2Ehhhhhhhhhh,"ax",@progbits
.global	_ZN13LiquidCrystalC2Ehhhhhhhhhh
	.type	_ZN13LiquidCrystalC2Ehhhhhhhhhh, @function
_ZN13LiquidCrystalC2Ehhhhhhhhhh:
	push r8
	push r10
	push r12
	push r14
	push r16
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r26,r24
	adiw r26,2+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,2
	ldi r30,lo8(_ZTV13LiquidCrystal+4)
	ldi r31,hi8(_ZTV13LiquidCrystal+4)
	st X+,r30
	st X,r31
	ldd r19,Y+11
	push r19
	ldd r19,Y+10
	push r19
	push r8
	push r10
	mov r8,r12
	mov r10,r14
	mov r12,r16
	mov r14,r18
	mov r16,r20
	ldi r18,lo8(-1)
	mov r20,r22
	ldi r22,0
	call _ZN13LiquidCrystal4initEhhhhhhhhhhhh
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r14
	pop r12
	pop r10
	pop r8
	ret
	.size	_ZN13LiquidCrystalC2Ehhhhhhhhhh, .-_ZN13LiquidCrystalC2Ehhhhhhhhhh
.global	_ZN13LiquidCrystalC1Ehhhhhhhhhh
	.set	_ZN13LiquidCrystalC1Ehhhhhhhhhh,_ZN13LiquidCrystalC2Ehhhhhhhhhh
	.section	.text._ZN13LiquidCrystalC2Ehhhhhhhhhhh,"ax",@progbits
.global	_ZN13LiquidCrystalC2Ehhhhhhhhhhh
	.type	_ZN13LiquidCrystalC2Ehhhhhhhhhhh, @function
_ZN13LiquidCrystalC2Ehhhhhhhhhhh:
	push r8
	push r10
	push r12
	push r14
	push r16
	push r28
	push r29
	in r28,__SP_L__
	in r29,__SP_H__
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r26,r24
	adiw r26,2+1
	st X,__zero_reg__
	st -X,__zero_reg__
	sbiw r26,2
	ldi r30,lo8(_ZTV13LiquidCrystal+4)
	ldi r31,hi8(_ZTV13LiquidCrystal+4)
	st X+,r30
	st X,r31
	ldd r19,Y+12
	push r19
	ldd r19,Y+11
	push r19
	ldd r19,Y+10
	push r19
	push r8
	mov r8,r10
	mov r10,r12
	mov r12,r14
	mov r14,r16
	mov r16,r18
	mov r18,r20
	mov r20,r22
	ldi r22,0
	call _ZN13LiquidCrystal4initEhhhhhhhhhhhh
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
/* epilogue start */
	pop r29
	pop r28
	pop r16
	pop r14
	pop r12
	pop r10
	pop r8
	ret
	.size	_ZN13LiquidCrystalC2Ehhhhhhhhhhh, .-_ZN13LiquidCrystalC2Ehhhhhhhhhhh
.global	_ZN13LiquidCrystalC1Ehhhhhhhhhhh
	.set	_ZN13LiquidCrystalC1Ehhhhhhhhhhh,_ZN13LiquidCrystalC2Ehhhhhhhhhhh
	.weak	_ZTV13LiquidCrystal
	.section	.rodata._ZTV13LiquidCrystal,"aG",@progbits,_ZTV13LiquidCrystal,comdat
	.type	_ZTV13LiquidCrystal, @object
	.size	_ZTV13LiquidCrystal, 8
_ZTV13LiquidCrystal:
	.word	0
	.word	0
	.word	gs(_ZN13LiquidCrystal5writeEh)
	.word	gs(_ZN5Print5writeEPKhj)
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
