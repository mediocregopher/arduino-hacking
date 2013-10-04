	.file	"HardwareSerial.cpp"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.section	.text._ZN14HardwareSerial9availableEv,"ax",@progbits
.global	_ZN14HardwareSerial9availableEv
	.type	_ZN14HardwareSerial9availableEv, @function
_ZN14HardwareSerial9availableEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+12
	ldd r25,Z+13
	movw r30,r24
	subi r30,-64
	sbci r31,-1
	ld r18,Z
	ldd r19,Z+1
	movw r30,r24
	subi r30,-66
	sbci r31,-1
	ld r24,Z
	ldd r25,Z+1
	sub r18,r24
	sbc r19,r25
	andi r18,63
	clr r19
	movw r24,r18
	ret
	.size	_ZN14HardwareSerial9availableEv, .-_ZN14HardwareSerial9availableEv
	.section	.text._ZN14HardwareSerial4peekEv,"ax",@progbits
.global	_ZN14HardwareSerial4peekEv
	.type	_ZN14HardwareSerial4peekEv, @function
_ZN14HardwareSerial4peekEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+12
	ldd r25,Z+13
	movw r30,r24
	subi r30,-64
	sbci r31,-1
	ld r20,Z
	ldd r21,Z+1
	movw r30,r24
	subi r30,-66
	sbci r31,-1
	ld r18,Z
	ldd r19,Z+1
	cp r20,r18
	cpc r21,r19
	breq .L4
	ld __tmp_reg__,Z+
	ld r31,Z
	mov r30,__tmp_reg__
	add r30,r24
	adc r31,r25
	ld r18,Z
	ldi r19,0
	rjmp .L3
.L4:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
.L3:
	movw r24,r18
	ret
	.size	_ZN14HardwareSerial4peekEv, .-_ZN14HardwareSerial4peekEv
	.section	.text._ZN14HardwareSerial4readEv,"ax",@progbits
.global	_ZN14HardwareSerial4readEv
	.type	_ZN14HardwareSerial4readEv, @function
_ZN14HardwareSerial4readEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+12
	ldd r25,Z+13
	movw r30,r24
	subi r30,-64
	sbci r31,-1
	ld r20,Z
	ldd r21,Z+1
	movw r30,r24
	subi r30,-66
	sbci r31,-1
	ld r18,Z
	ldd r19,Z+1
	cp r20,r18
	cpc r21,r19
	breq .L7
	ld r26,Z
	ldd r27,Z+1
	add r26,r24
	adc r27,r25
	ld r24,X
	ld r18,Z
	ldd r19,Z+1
	subi r18,-1
	sbci r19,-1
	andi r18,63
	clr r19
	std Z+1,r19
	st Z,r18
	mov r18,r24
	ldi r19,0
	rjmp .L6
.L7:
	ldi r18,lo8(-1)
	ldi r19,lo8(-1)
.L6:
	movw r24,r18
	ret
	.size	_ZN14HardwareSerial4readEv, .-_ZN14HardwareSerial4readEv
	.section	.text._ZN14HardwareSerial5flushEv,"ax",@progbits
.global	_ZN14HardwareSerial5flushEv
	.type	_ZN14HardwareSerial5flushEv, @function
_ZN14HardwareSerial5flushEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	movw r30,r24
	ldd r24,Z+33
	tst r24
	breq .L9
.L15:
	ldd r26,Z+20
	ldd r27,Z+21
	ld r24,X
	sbrs r24,6
	rjmp .L15
.L9:
	std Z+33,__zero_reg__
	ret
	.size	_ZN14HardwareSerial5flushEv, .-_ZN14HardwareSerial5flushEv
	.section	.text._ZN14HardwareSerial5writeEh,"ax",@progbits
.global	_ZN14HardwareSerial5writeEh
	.type	_ZN14HardwareSerial5writeEh, @function
_ZN14HardwareSerial5writeEh:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r18,Z+14
	ldd r19,Z+15
	movw r26,r18
	subi r26,-64
	sbci r27,-1
	ld r24,X+
	ld r25,X
	sbiw r26,1
	adiw r24,1
	andi r24,63
	clr r25
	movw r28,r18
	subi r28,-66
	sbci r29,-1
.L20:
	ld r20,Y
	ldd r21,Y+1
	cp r24,r20
	cpc r25,r21
	breq .L20
	ld __tmp_reg__,X+
	ld r27,X
	mov r26,__tmp_reg__
	add r26,r18
	adc r27,r19
	st X,r22
	ldd r26,Z+14
	ldd r27,Z+15
	subi r26,-64
	sbci r27,-1
	adiw r26,1
	st X,r25
	st -X,r24
	ldd r26,Z+22
	ldd r27,Z+23
	ld r18,X
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Z+31
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	or r18,r24
	st X,r18
	ldi r24,lo8(1)
	std Z+33,r24
	ldd __tmp_reg__,Z+20
	ldd r31,Z+21
	mov r30,__tmp_reg__
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
	ldi r24,lo8(1)
	ldi r25,0
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial5writeEh, .-_ZN14HardwareSerial5writeEh
	.section	.text._Z11serialEventv,"ax",@progbits
	.weak	_Z11serialEventv
	.type	_Z11serialEventv, @function
_Z11serialEventv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.size	_Z11serialEventv, .-_Z11serialEventv
	.section	.text.__vector_18,"ax",@progbits
.global	__vector_18
	.type	__vector_18, @function
__vector_18:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r20
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 10 */
.L__stack_usage = 10
	lds r24,192
	sbrc r24,2
	rjmp .L24
	lds r20,198
	lds r24,rx_buffer+64
	lds r25,rx_buffer+64+1
	adiw r24,1
	andi r24,63
	clr r25
	lds r18,rx_buffer+66
	lds r19,rx_buffer+66+1
	cp r24,r18
	cpc r25,r19
	breq .L23
	lds r30,rx_buffer+64
	lds r31,rx_buffer+64+1
	subi r30,lo8(-(rx_buffer))
	sbci r31,hi8(-(rx_buffer))
	st Z,r20
	sts rx_buffer+64+1,r25
	sts rx_buffer+64,r24
	rjmp .L23
.L24:
	lds r24,198
.L23:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_18, .-__vector_18
	.section	.text._Z14serialEventRunv,"ax",@progbits
	.weak	_Z14serialEventRunv
	.type	_Z14serialEventRunv, @function
_Z14serialEventRunv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(Serial)
	ldi r25,hi8(Serial)
	call _ZN14HardwareSerial9availableEv
	or r24,r25
	breq .L26
	call _Z11serialEventv
.L26:
	ret
	.size	_Z14serialEventRunv, .-_Z14serialEventRunv
	.section	.text.__vector_19,"ax",@progbits
.global	__vector_19
	.type	__vector_19, @function
__vector_19:
	push r1
	push r0
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
	push r19
	push r24
	push r25
	push r30
	push r31
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 9 */
.L__stack_usage = 9
	lds r18,tx_buffer+64
	lds r19,tx_buffer+64+1
	lds r24,tx_buffer+66
	lds r25,tx_buffer+66+1
	cp r18,r24
	cpc r19,r25
	brne .L32
	lds r24,193
	andi r24,lo8(-33)
	sts 193,r24
	rjmp .L31
.L32:
	lds r30,tx_buffer+66
	lds r31,tx_buffer+66+1
	subi r30,lo8(-(tx_buffer))
	sbci r31,hi8(-(tx_buffer))
	ld r18,Z
	lds r24,tx_buffer+66
	lds r25,tx_buffer+66+1
	adiw r24,1
	andi r24,63
	clr r25
	sts tx_buffer+66+1,r25
	sts tx_buffer+66,r24
	sts 198,r18
.L31:
/* epilogue start */
	pop r31
	pop r30
	pop r25
	pop r24
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.size	__vector_19, .-__vector_19
	.section	.text._ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh,"ax",@progbits
.global	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh
	.type	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh, @function
_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh:
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
	movw r30,r24
	std Z+3,__zero_reg__
	std Z+2,__zero_reg__
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	ldi r26,0
	ldi r27,0
	std Z+4,r24
	std Z+5,r25
	std Z+6,r26
	std Z+7,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	std Z+1,r25
	st Z,r24
	std Z+13,r23
	std Z+12,r22
	std Z+15,r21
	std Z+14,r20
	std Z+17,r19
	std Z+16,r18
	std Z+19,r17
	std Z+18,r16
	std Z+21,r15
	std Z+20,r14
	std Z+23,r13
	std Z+22,r12
	std Z+25,r11
	std Z+24,r10
	std Z+27,r9
	std Z+26,r8
	ldd r24,Y+15
	std Z+28,r24
	ldd r24,Y+16
	std Z+29,r24
	ldd r24,Y+17
	std Z+30,r24
	ldd r24,Y+18
	std Z+31,r24
	ldd r24,Y+19
	std Z+32,r24
/* epilogue start */
	ldi r30, lo8(12)
	jmp __epilogue_restores__ + ((18 - 12) * 2)
	.size	_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh, .-_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh
.global	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh
	.set	_ZN14HardwareSerialC1EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh,_ZN14HardwareSerialC2EP11ring_bufferS1_PVhS3_S3_S3_S3_S3_hhhhh
	.section	.text._ZN14HardwareSerial5beginEm,"ax",@progbits
.global	_ZN14HardwareSerial5beginEm
	.type	_ZN14HardwareSerial5beginEm, @function
_ZN14HardwareSerial5beginEm:
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
	movw r28,r24
	movw r12,r20
	movw r14,r22
	cp r20,__zero_reg__
	ldi r24,-31
	cpc r21,r24
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L36
	ldd r30,Y+20
	ldd r31,Y+21
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Y+32
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	st Z,r24
	ldi r22,0
	ldi r23,lo8(9)
	ldi r24,lo8(61)
	ldi r25,0
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	subi r18,1
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	lsr r21
	ror r20
	ror r19
	ror r18
	cp r18,__zero_reg__
	ldi r24,16
	cpc r19,r24
	brlo .L37
.L36:
	ldd r30,Y+20
	ldd r31,Y+21
	st Z,__zero_reg__
	ldi r22,lo8(-128)
	ldi r23,lo8(-124)
	ldi r24,lo8(30)
	ldi r25,0
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	subi r18,1
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	lsr r21
	ror r20
	ror r19
	ror r18
.L37:
	ldd r30,Y+16
	ldd r31,Y+17
	st Z,r19
	ldd r30,Y+18
	ldd r31,Y+19
	st Z,r18
	std Y+33,__zero_reg__
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	ldi r24,lo8(1)
	ldi r25,0
	movw r18,r24
	ldd r0,Y+28
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r20,r18
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r18,r24
	ldd r0,Y+29
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r20,r18
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r18,r24
	ldd r0,Y+30
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r20,r18
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r18,Z
	ldd r0,Y+31
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	st Z,r24
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	ret
	.size	_ZN14HardwareSerial5beginEm, .-_ZN14HardwareSerial5beginEm
	.section	.text._ZN14HardwareSerial5beginEmh,"ax",@progbits
.global	_ZN14HardwareSerial5beginEmh
	.type	_ZN14HardwareSerial5beginEmh, @function
_ZN14HardwareSerial5beginEmh:
	push r11
	push r12
	push r13
	push r14
	push r15
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 7 */
.L__stack_usage = 7
	movw r28,r24
	movw r12,r20
	movw r14,r22
	mov r11,r18
	cp r20,__zero_reg__
	ldi r24,-31
	cpc r21,r24
	cpc r22,__zero_reg__
	cpc r23,__zero_reg__
	breq .L42
	ldd r30,Y+20
	ldd r31,Y+21
	ldi r24,lo8(1)
	ldi r25,0
	ldd r0,Y+32
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	st Z,r24
	ldi r22,0
	ldi r23,lo8(9)
	ldi r24,lo8(61)
	ldi r25,0
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	subi r18,1
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	lsr r21
	ror r20
	ror r19
	ror r18
	cp r18,__zero_reg__
	ldi r24,16
	cpc r19,r24
	brlo .L43
.L42:
	ldd r30,Y+20
	ldd r31,Y+21
	st Z,__zero_reg__
	ldi r22,lo8(-128)
	ldi r23,lo8(-124)
	ldi r24,lo8(30)
	ldi r25,0
	movw r20,r14
	movw r18,r12
	call __udivmodsi4
	subi r18,1
	sbc r19,__zero_reg__
	sbc r20,__zero_reg__
	sbc r21,__zero_reg__
	lsr r21
	ror r20
	ror r19
	ror r18
.L43:
	ldd r30,Y+16
	ldd r31,Y+17
	st Z,r19
	ldd r30,Y+18
	ldd r31,Y+19
	st Z,r18
	ldd r30,Y+24
	ldd r31,Y+25
	st Z,r11
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	ldi r24,lo8(1)
	ldi r25,0
	movw r18,r24
	ldd r0,Y+28
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r20,r18
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r18,r24
	ldd r0,Y+29
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r20,r18
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r20,Z
	movw r18,r24
	ldd r0,Y+30
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	or r20,r18
	st Z,r20
	ldd r30,Y+22
	ldd r31,Y+23
	ld r18,Z
	ldd r0,Y+31
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	st Z,r24
/* epilogue start */
	pop r29
	pop r28
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	ret
	.size	_ZN14HardwareSerial5beginEmh, .-_ZN14HardwareSerial5beginEmh
	.section	.text._ZN14HardwareSerial3endEv,"ax",@progbits
.global	_ZN14HardwareSerial3endEv
	.type	_ZN14HardwareSerial3endEv, @function
_ZN14HardwareSerial3endEv:
	push r28
	push r29
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	ldd r24,Z+14
	ldd r25,Z+15
	movw r26,r24
	subi r26,-64
	sbci r27,-1
	movw r28,r24
	subi r28,-66
	sbci r29,-1
.L48:
	ld r20,X+
	ld r21,X
	sbiw r26,1
	ld r18,Y
	ldd r19,Y+1
	cp r20,r18
	cpc r21,r19
	brne .L48
	ldd r26,Z+22
	ldd r27,Z+23
	ld r20,X
	ldi r24,lo8(1)
	ldi r25,0
	movw r18,r24
	ldd r0,Z+28
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	com r18
	and r18,r20
	st X,r18
	ldd r26,Z+22
	ldd r27,Z+23
	ld r20,X
	movw r18,r24
	ldd r0,Z+29
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	com r18
	and r18,r20
	st X,r18
	ldd r26,Z+22
	ldd r27,Z+23
	ld r20,X
	movw r18,r24
	ldd r0,Z+30
	rjmp 2f
	1:
	lsl r18
	rol r19
	2:
	dec r0
	brpl 1b
	com r18
	and r18,r20
	st X,r18
	ldd r26,Z+22
	ldd r27,Z+23
	ld r18,X
	ldd r0,Z+31
	rjmp 2f
	1:
	lsl r24
	rol r25
	2:
	dec r0
	brpl 1b
	com r24
	and r24,r18
	st X,r24
	ldd r24,Z+12
	ldd r25,Z+13
	movw r30,r24
	subi r30,-66
	sbci r31,-1
	ld r18,Z
	ldd r19,Z+1
	movw r30,r24
	subi r30,-64
	sbci r31,-1
	std Z+1,r19
	st Z,r18
/* epilogue start */
	pop r29
	pop r28
	ret
	.size	_ZN14HardwareSerial3endEv, .-_ZN14HardwareSerial3endEv
	.section	.text._ZN14HardwareSerialcvbEv,"ax",@progbits
.global	_ZN14HardwareSerialcvbEv
	.type	_ZN14HardwareSerialcvbEv, @function
_ZN14HardwareSerialcvbEv:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ldi r24,lo8(1)
	ret
	.size	_ZN14HardwareSerialcvbEv, .-_ZN14HardwareSerialcvbEv
	.section	.text.startup._GLOBAL__sub_I_rx_buffer,"ax",@progbits
	.type	_GLOBAL__sub_I_rx_buffer, @function
_GLOBAL__sub_I_rx_buffer:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	sts Serial+2+1,__zero_reg__
	sts Serial+2,__zero_reg__
	ldi r24,lo8(-24)
	ldi r25,lo8(3)
	ldi r26,0
	ldi r27,0
	sts Serial+4,r24
	sts Serial+4+1,r25
	sts Serial+4+2,r26
	sts Serial+4+3,r27
	ldi r24,lo8(_ZTV14HardwareSerial+4)
	ldi r25,hi8(_ZTV14HardwareSerial+4)
	sts Serial+1,r25
	sts Serial,r24
	ldi r24,lo8(rx_buffer)
	ldi r25,hi8(rx_buffer)
	sts Serial+12+1,r25
	sts Serial+12,r24
	ldi r24,lo8(tx_buffer)
	ldi r25,hi8(tx_buffer)
	sts Serial+14+1,r25
	sts Serial+14,r24
	ldi r24,lo8(-59)
	ldi r25,0
	sts Serial+16+1,r25
	sts Serial+16,r24
	ldi r24,lo8(-60)
	ldi r25,0
	sts Serial+18+1,r25
	sts Serial+18,r24
	ldi r24,lo8(-64)
	ldi r25,0
	sts Serial+20+1,r25
	sts Serial+20,r24
	ldi r24,lo8(-63)
	ldi r25,0
	sts Serial+22+1,r25
	sts Serial+22,r24
	ldi r24,lo8(-62)
	ldi r25,0
	sts Serial+24+1,r25
	sts Serial+24,r24
	ldi r24,lo8(-58)
	ldi r25,0
	sts Serial+26+1,r25
	sts Serial+26,r24
	ldi r24,lo8(4)
	sts Serial+28,r24
	ldi r24,lo8(3)
	sts Serial+29,r24
	ldi r24,lo8(7)
	sts Serial+30,r24
	ldi r24,lo8(5)
	sts Serial+31,r24
	ldi r24,lo8(1)
	sts Serial+32,r24
	ret
	.size	_GLOBAL__sub_I_rx_buffer, .-_GLOBAL__sub_I_rx_buffer
	.global __do_global_ctors
	.section .ctors,"a",@progbits
	.p2align	1
	.word	gs(_GLOBAL__sub_I_rx_buffer)
	.weak	_ZTV14HardwareSerial
	.section	.rodata._ZTV14HardwareSerial,"aG",@progbits,_ZTV14HardwareSerial,comdat
	.type	_ZTV14HardwareSerial, @object
	.size	_ZTV14HardwareSerial, 16
_ZTV14HardwareSerial:
	.word	0
	.word	0
	.word	gs(_ZN14HardwareSerial5writeEh)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(_ZN14HardwareSerial9availableEv)
	.word	gs(_ZN14HardwareSerial4readEv)
	.word	gs(_ZN14HardwareSerial4peekEv)
	.word	gs(_ZN14HardwareSerial5flushEv)
.global	Serial
	.section	.bss.Serial,"aw",@nobits
	.type	Serial, @object
	.size	Serial, 34
Serial:
	.zero	34
.global	tx_buffer
	.section	.bss.tx_buffer,"aw",@nobits
	.type	tx_buffer, @object
	.size	tx_buffer, 68
tx_buffer:
	.zero	68
.global	rx_buffer
	.section	.bss.rx_buffer,"aw",@nobits
	.type	rx_buffer, @object
	.size	rx_buffer, 68
rx_buffer:
	.zero	68
	.weak	_ZTV6Stream
	.section	.rodata._ZTV6Stream,"aG",@progbits,_ZTV6Stream,comdat
	.type	_ZTV6Stream, @object
	.size	_ZTV6Stream, 16
_ZTV6Stream:
	.word	0
	.word	0
	.word	gs(__cxa_pure_virtual)
	.word	gs(_ZN5Print5writeEPKhj)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
	.word	gs(__cxa_pure_virtual)
	.ident	"GCC: (GNU) 4.7.2"
.global __do_copy_data
.global __do_clear_bss
