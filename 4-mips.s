# 4. Write a program that calculates the following equation:
# y = (9x + 7) / (2x + 8)
# Store x in $t1 using the instruction: addi $t1, $zero, x, replacing x with the desired value.
# Whenever you need the value of x, use the value stored in register $t1.
# Store the quotient of the division in $t2 and the remainder in $t3.
# Answer what happens when x = -4.

addi $t1, $zero, -4 #x=-4

sll $t0, $t1, 3 # 8x
add $t0, $t0, $t1 #9x
addi $t0, $t0, 7 # 9x + 7

sll $t2, $t1, 1 # 2x
addi $t2, $t2, 8 # 2x + 8

div $t0, $t2 # y = (9x + 7) / (2x + 8)
mflo $t2
mfhi $t3

# x = -4, a division by 0 occurs. MIPS does not return an error, but the behavior is undefined.
# The correct approach is to use beq to skip the division if the divisor is 0.