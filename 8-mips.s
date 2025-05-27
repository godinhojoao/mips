# 3. Start a program with the instruction: ori $t1, $zero, 0x01.
# Using only R-type logical instructions (two registers as operands) or, and, xor,
# and shift instructions (i.e., do not use any ori except the initial one, nor nor),
# write 0xFFFFFFFF into $t1.
# Try to use the fewest instructions possible.

0x12345678
sll $t2, $t1, 4	# 0010
or $t1, $t1, $t2 # 0001 or 0010 = 0011

sll $t2, $t1, 8 # 1100
or $t1, $t1, $t2 # 0011 or 1100 = 1111

sll $t2, $t1, 16 # 0000
or $t1, $t1, $t2 # 1111 or 0000 = 1111