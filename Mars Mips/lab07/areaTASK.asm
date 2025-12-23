.data
baseInput: .asciiz "Enter the base: "
heightInput: .asciiz "Enter the height: "
radiusInput: .asciiz "Enter the value of radius: "
choiceMsg: .asciiz "Press 1 for triangle \nPress 2 for rectangle \nPress 3 for circle: "
pi: .float 3.14
triangleArea: .float 0.5
newLine: .asciiz "\n"
resultMsg: .asciiz "Area = "

.text
.globl main
main:
    li $v0, 4
    la $a0, choiceMsg
    syscall

    li $v0, 5
    syscall
    move $t1, $v0

    li $t2, 1
    beq $t1, $t2, triangle
    j exit
        
    li $t3, 2
    beq $t1, $t3, rectangle
    j exit

    li $t3, 3
    beq $t1, $t3, circle
    j exit
triangle:
    li $v0, 4
    la $a0, baseInput
    syscall

    li $v0, 6
    syscall
    mov.s $f6, $f0

    li $v0, 4
    la $a0, heightInput
    syscall

    li $v0, 6
    syscall
    mov.s $f7, $f0

    l.s $f4, triangleArea
    mul.s $f5, $f6, $f7
    mul.s $f5, $f5, $f4

    li $v0, 4
    la $a0, resultMsg
    syscall

    mov.s $f12, $f5
    li $v0, 2
    syscall

rectangle:
    li $v0, 4
    la $a0, baseInput
    syscall

    li $v0, 6
    syscall
    mov.s $f6, $f0

    li $v0, 4
    la $a0, heightInput
    syscall

    li $v0, 6
    syscall
    mov.s $f7, $f0

    mul.s $f5, $f6, $f7

    li $v0, 4
    la $a0, resultMsg
    syscall

    mov.s $f12, $f5
    li $v0, 2
    syscall

    li $v0, 4
    la $a0, newLine
    syscall
circle:
    li $v0, 4
    la $a0, radiusInput
    syscall

    li $v0, 6
    syscall
    mov.s $f8, $f0
    
    l.s $f10, pi
    
    mul.s $f9, $f8,$f8
    mul.s $f9,$f9,$f10

    li $v0, 4
    la $a0, resultMsg
    syscall

    mov.s $f12, $f9
    li $v0, 2
    syscall

exit:
    li $v0, 10
    syscall
