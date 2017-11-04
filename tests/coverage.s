; FIXME: all instructions should be used for coverage test.
add $40 $2 #1
add #1 $8 #2
print #1
print #2
jmp #6
sub #2 $16 #3		; skipped because previous jump
add #2 $100 #3		; to be executed
print #3
mul $-2 $2 #4           ; multiply: (-2)*(2)
mul $-2 $-40 #5         ; multiply: (-2)*(-40)
print #4
print #5
div $4 $2 #6            ; divide: 4 / 2 = 2
mod $5 $2 #7            ; modulo: 5 % 2 = 1
print #6
print #7
call #19
jmp #24
halt
print $66
call #22
ret
print $77
ret
;
; AND (bitwise AND)
;
; 3 & 1 = 1
;
nop
and $3 $1 #8
nop
print #8
nop
;
; OR (bitwise OR)
;
; 2 | 0 = 2
;
nop
or $2 $0 #9
nop
print #9
nop
;
; NOT (negate all bits)
;
; ~(-2) = 1
;
nop
sub $0 $2 #10
nop
not #10 #11
nop
print #11
nop
;
; XOR (exclusive OR)
;
; (-2) ^ 1 = -1
;
nop
xor #10 #11 #12
nop
print #12
nop
;
; LSL (logical shift left)
;
; ~(0) = -1
; -1 << 1 = -2
;
nop
not $0 #13
nop
lsl #13 $1 #13
nop
print #13
nop
;
; LSR (logical shift right)
;
; ~(0) = -1
; -1 >> 1 = MaxInt
;
nop
not $0 #13
nop
lsr #13 $1 #13
nop
print #13
nop
;
; ASR (arithmetic shift right)
;
; ~(0) = -1
; -1 >> 1 (LSR) = MaxInt
; ~(MaxInt) = MinInt
; MinInt >> 1 = 2b'110....0
;
nop
not $0 #13
nop
lsr #13 $1 #13
nop
not #13 #13
nop
asr #13 $1 #13
nop
print #13
nop
halt
