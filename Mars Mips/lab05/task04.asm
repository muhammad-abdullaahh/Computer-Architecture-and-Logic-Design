.data
radiusInput: .asciiz "Enter the radius of the circle: "
pi: .float 3.14
two: .float 2.0
area: .asciiz "The area of the circle is: "
perimeter: .asciiz "The perimeter of the circle is: "
newLine: .asciiz "\n"

.text
.globl main
main:
    li   $v0, 4
    la   $a0, radiusInput
    syscall

    li   $v0, 6       
    syscall

    l.s  $f2, pi       
    mul.s $f4, $f0, $f0
    mul.s $f12, $f4, $f2   

    li   $v0, 4
    la   $a0, area
    syscall

    li   $v0, 2       
    syscall

    li   $v0, 4
    la   $a0, newLine
    syscall

    l.s  $f6, two     
    mul.s $f8, $f6, $f2  
    mul.s $f12, $f8, $f0 

    li   $v0, 4
    la   $a0, perimeter
    syscall

    li   $v0, 2
    syscall

    li   $v0, 4
    la   $a0, newLine
    syscall

    li   $v0, 10
    syscall

















