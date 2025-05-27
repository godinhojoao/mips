# 3. Write a program that calculates the following equation: y = 3x^2 - 5x + 13
# Store the value of x in register $t5 using the instruction `addi $t5, $zero, x`, replacing x
# with the desired value, and whenever you need the value of x, use the value stored in register $t5.
# Store the result y in register $t6.

addi $t5, $zero, 2 # x = 2
mult $t5,$t5
mflo $t1 # y = x * x

sll $t7, $t1, 2 # 4(x*x)
sub $t7, $t7, $t1 # 4(x*x) - (x*x) = 3(x*x)

sll $t2, $t5, 2 #4x
add $t2, $t2, $t5 #4x + x = x

sub $t6, $t7, $t2 # y = 3x^2 - 5x
addi $t6, $t6, 13 # y = 3x^2 - 5x + 13