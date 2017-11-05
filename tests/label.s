xor #0 #0 #0 
add $1 #0 #0

LA:
jz #0 @LB
print "A"
sub #0 $1 #0
jmp @LA

halt
LB:
print "B"
