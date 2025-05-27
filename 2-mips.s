# 2. Write a program that calculates the value of 4x - 2y + 3z
# (store the values of x, y, and z in $t1, $t2, and $t3 respectively)
# and place the result in $t7.

addi $t0, $zero, 1 #x
addi $t1, $zero, 1 #y
addi $t2, $zero, 1 #z

sll $t0, $t0, 2 # 4x
sll $t1, $t1, 1 # 2y
sll $t3, $t2, 2 # 4z
sub $t3, $t3, $t2 # 4z -z = 3z

# 4x - 2y + 3z
sub $t7, $t0, $t1 # 4x - 2y
add $t7, $t7, $t3 # 4x - 2y + 3z
