	.file	"main.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text.setup,"ax",@progbits
.global	setup
	.type	setup, @function
setup:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r22,lo8(1)
	ldi r24,lo8(13)
	call pinMode
	ldi r20,lo8(-128)
	ldi r21,lo8(37)
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial5beginEm
	ret
	.size	setup, .-setup
	.section	.text.loop,"ax",@progbits
.global	loop
	.type	loop, @function
loop:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	ldi r24,lo8(14)
	call analogRead
	movw r28,r24
	ldi r20,lo8(10)
	ldi r21,0
	movw r22,r24
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN5Print7printlnEii
	sbiw r28,31
	brlt .L3
	ldi r22,0
	rjmp .L5
.L3:
	ldi r22,lo8(1)
.L5:
	ldi r24,lo8(13)
	call digitalWrite
	ldi r22,lo8(-6)
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call delay
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	loop, .-loop
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	call init
	call setup
	ldi r28,lo8(gs(_Z14serialEventRunv))
	ldi r29,hi8(gs(_Z14serialEventRunv))
.L14:
	call loop
	sbiw r28,0
	breq .L14
	call _Z14serialEventRunv
	rjmp .L14
	.size	main, .-main
	.section	.text.__cxa_pure_virtual,"ax",@progbits
.global	__cxa_pure_virtual
	.type	__cxa_pure_virtual, @function
__cxa_pure_virtual:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.L16:
	rjmp .L16
	.size	__cxa_pure_virtual, .-__cxa_pure_virtual
	.weak	_Z14serialEventRunv
	.ident	"GCC: (GNU) 4.7.2"
