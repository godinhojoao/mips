# Write the sequence 0x12345678 into $t1.
# Then write code that reverses the sequence, writing 0x87654321 into $t2.
# Obviously, the code must reverse the bits of $t1 and not simply write 0x87654321 directly into $t2.

ori  $t1, $zero, 0x1234
sll $t1, $t1, 16 # 4 bits * 4 = 16 bits
ori  $t1, $t1, 0x5678

# now invert it using only logical operations of type R
# $t1 = 0x12345678

sll $t2, $t1, 28 # 0x80000000 - 8 ok

sll $t3, $t1, 24 # 0x78000000
srl $t3, $t3, 28 # 0x00000007
sll $t3, $t3, 24 # 0x70000000 - 7 ok

or $t2, $t2, $t3 # 0x87000000

sll $t3, $t1, 20 # 0x67800000
srl $t3, $t3, 28 # 0x00000006
sll $t3, $t3, 20 # 0x0060000 - 6 ok

or $t2, $t2, $t3 # 0x87600000

sll $t3, $t1, 16 # 0x56780000
srl $t3, $t3, 28 # 0x00000005
sll $t3, $t3, 16 # 0x0005000 - 5 ok

or $t2, $t2, $t3 # 0x87650000

sll $t3, $t1, 12 # 0x45678000
srl $t3, $t3, 28 # 0x00000004
sll $t3, $t3, 12 # 0x0004000 - 4 ok

or $t2, $t2, $t3 # 0x87654000

sll $t3, $t1, 8 # 0x34567800
srl $t3, $t3, 28 # 0x00000003
sll $t3, $t3, 8 # 0x0000300 - 3 ok

or $t2, $t2, $t3 # 0x87654300

sll $t3, $t1, 4 # 0x23456780
srl $t3, $t3, 28 # 0x00000002
sll $t3, $t3, 4 # 0x0000020 - 2 ok

or $t2, $t2, $t3 # 0x87654320

srl $t3, $t1, 28 # 0x00000001 - 1 ok

or $t2, $t2, $t3 # 0x87654321 - done


