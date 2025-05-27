# 2. Write 0xAAAAAAAA into $t1. Perform a one-bit right shift on this value
# and store the result in $t2, keeping $t1 unchanged.
# In $t3, $t4, and $t5, store the results of the or, and, and xor operations
# between $t1 and $t2, respectively.
# In comments at the end of the code, explain the results obtained by showing the binary values.

ori  $t1, $zero, 0xAAAA
sll $t1, $t1, 16 # 4 bits * 4 = 16 bits

ori  $t1, $t1, 0xAAAA

srl $t2, $t1, 1

or $t3, $t1, $t2
and $t3, $t1, $t2
xor $t4, $t1, $t2
