.data
inputMsg: .asciiz "Enter a number: "
outputMsg: .asciiz "The sum of even numbers is: "
newLine:  .asciiz "\n"

.text
.globl main
main:
    li $v0,4
    la $a0,inputMsg
    syscall

    li $v0,5
    syscall
    move $t0,$v0       

    li $t1,2          
    li $t2,0           

loop:
    bgt $t1,$t0,printing  
    add $t2,$t2,$t1   
    addi $t1,$t1,2   
    b loop

printing:
    li $v0,4
    la $a0,outputMsg
    syscall

    li $v0, 1
    move $a0,$t2
    syscall

    li $v0,4
    la $a0,newLine
    syscall

    li $v0,10
    syscall
