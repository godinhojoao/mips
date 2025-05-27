# 1. Write a program that stores the value 0xDECADA70 in register $t7,
# inserting one hexadecimal digit at a time (that is, insert letter by letter, individually) into the register.

ori  $t7, $zero, 0xD

sll $t7, $t7, 4
ori $t7, $t7, 0xE

sll $t7, $t7, 4
ori $t7, $t7, 0xC

sll $t7, $t7, 4
ori $t7, $t7, 0xA

sll $t7, $t7, 4
ori $t7, $t7, 0xD

sll $t7, $t7, 4
ori $t7, $t7, 0xA

sll $t7, $t7, 4
ori $t7, $t7, 0x7

sll $t7, $t7, 4
ori $t7, $t7, 0x0