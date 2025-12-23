.data
input1: .asciiz "Enter the first number: "
input2: .asciiz "Enter the second number: "
input3: .asciiz "Enter the third number: "
greater1: .asciiz "The first number is greater..."
greater2: .asciiz "The second number is greater..."
greater3: .asciiz "The third number is greater..."
newLine: .asciiz "\n"

.text
.globl main
main:
    li $v0,4
    la $a0,input1
    syscall
    li $v0,5
    syscall
    move $t1,$v0
    
    li $v0,4
    la $a0,input2
    syscall
    li $v0,5
    syscall
    move $t2,$v0
    
    li $v0,4
    la $a0,input3
    syscall
    li $v0,5
    syscall
    move $t3,$v0

    bgt $t1,$t2,check13
    j check2

check13:
    bgt $t1,$t3,oneGreater
    j check2

check2:
    bgt $t2,$t1,check23
    j check3

check23:
    bgt $t2,$t3,twoGreater
    j check3

check3:
    bgt $t3,$t1,check32
    j oneGreater

check32:
    bgt $t3,$t2,threeGreater
    j oneGreater

oneGreater:
    li $v0, 4
    la $a0, greater1
    syscall
    j exit

twoGreater:
    li $v0, 4
    la $a0, greater2
    syscall
    j exit

threeGreater:
    li $v0, 4
    la $a0, greater3
    syscall
    j exit

exit:
    li $v0, 10
    syscall
