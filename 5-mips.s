# 5. Write a program that calculates the area of the equilateral triangle below and stores the result in $t3.
# Store b in $t1 and h in $t2 using the instructions:
# addi $t1, $zero, b
# addi $t2, $zero, h
# Replace b and h with the desired values, and whenever you need b or h, use the values stored in registers $t1 and $t2.

addi $t1, $zero, 3 # b
addi $t2, $zero, 2 #h

mult $t1, $t2
mflo $t3 # (b*h)

sra $t3, $t3, 1 # (b*h)/2
