.data
msg1: .asciiz "Original value: "
msg2: .asciiz "After multiplying: "
msg3: .asciiz "After dividing: "
newline: .asciiz "\n"
val: .word 0x00000015 
.text
.globl main
main:

    lw $t0, val
    li $v0, 4
    la $a0, msg1
    syscall

    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    sll $t1, $t0, 8  

    li $v0, 4
    la $a0, msg2
    syscall

    li $v0, 1
    move $a0, $t1
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    srl $t2, $t0, 3    

    li $v0, 4
    la $a0, msg3
    syscall

    li $v0, 1
    move $a0, $t2
    syscall

    li $v0, 4
    la $a0, newline
    syscall

    li $v0, 10
    syscall
