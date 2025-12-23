.data
menu: .asciiz "Choose a shape:\n1. Circle\n2. Square\n3. Rectangle\n4. Triangle\n5. Trapezium\n6. Pentagon\nEnter your choice: "
radiusMsg: .asciiz "Enter the radius: "
sideMsg: .asciiz "Enter the side: "
lengthMsg: .asciiz "Enter the length: "
widthMsg: .asciiz "Enter the width: "
aMsg: .asciiz "Enter side a: "
bMsg: .asciiz "Enter side b: "
cMsg: .asciiz "Enter side c: "
dMsg: .asciiz "Enter side d: "
perimeterMsg: .asciiz "Perimeter is: "
pi: .float 3.14
two: .float 2.0
four: .float 4.0
five: .float 5.0
newLine: .asciiz "\n"

.text
.globl main
main:
    li $v0,4
    la $a0,menu
    syscall

    li $v0,5
    syscall
    move $t0,$v0

    beq $t0,1,circle
    beq $t0,2,square
    beq $t0,3,rectangle
    beq $t0,4,triangle
    beq $t0,5,trapezium
    beq $t0,6,pentagon
    b exit

circle:
    li $v0,4
    la $a0,radiusMsg
    syscall

    li $v0,6
    syscall
    mov.s $f1,$f0

    l.s $f2,pi
    l.s $f3,two
    mul.s $f4,$f2,$f3
    mul.s $f12,$f4,$f1

    li $v0,4
    la $a0,perimeterMsg
    syscall

    li $v0,2
    syscall
    b exit

square:
    li $v0,4
    la $a0,sideMsg
    syscall

    li $v0,6
    syscall
    mov.s $f1,$f0

    l.s $f2,four
    mul.s $f12,$f1,$f2

    li $v0,4
    la $a0,perimeterMsg
    syscall

    li $v0,2
    syscall
    b exit

rectangle:
    li $v0,4
    la $a0,lengthMsg
    syscall

    li $v0,6
    syscall
    mov.s $f1,$f0

    li $v0,4
    la $a0,widthMsg
    syscall

    li $v0,6
    syscall
    mov.s $f2,$f0

    add.s $f3,$f1,$f2
    l.s $f4,two
    mul.s $f12,$f3,$f4

    li $v0,4
    la $a0,perimeterMsg
    syscall

    li $v0,2
    syscall
    b exit

triangle:
    li $v0,4
    la $a0,aMsg
    syscall
    li $v0,6
    syscall
    mov.s $f1,$f0

    li $v0,4
    la $a0,bMsg
    syscall
    li $v0,6
    syscall
    mov.s $f2,$f0

    li $v0,4
    la $a0,cMsg
    syscall
    li $v0,6
    syscall
    mov.s $f3,$f0

    add.s $f12,$f1,$f2
    add.s $f12,$f12,$f3

    li $v0,4
    la $a0,perimeterMsg
    syscall

    li $v0,2
    syscall
    b exit

trapezium:
    li $v0,4
    la $a0,aMsg
    syscall
    li $v0,6
    syscall
    mov.s $f1,$f0

    li $v0,4
    la $a0,bMsg
    syscall
    li $v0,6
    syscall
    mov.s $f2,$f0

    li $v0,4
    la $a0,cMsg
    syscall
    li $v0,6
    syscall
    mov.s $f3,$f0

    li $v0,4
    la $a0,dMsg
    syscall
    li $v0,6
    syscall
    mov.s $f4,$f0

    add.s $f12,$f1,$f2
    add.s $f12,$f12,$f3
    add.s $f12,$f12,$f4

    li $v0,4
    la $a0,perimeterMsg
    syscall

    li $v0,2
    syscall
    b exit

pentagon:
    li $v0,4
    la $a0,sideMsg
    syscall

    li $v0,6
    syscall
    mov.s $f1,$f0

    l.s $f2,five
    mul.s $f12,$f1,$f2

    li $v0,4
    la $a0,perimeterMsg
    syscall

    li $v0,2
    syscall
    b exit

exit:
    li $v0,10
    syscall
