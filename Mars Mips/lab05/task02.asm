.data
num1: .double 70
num2: .double 02
resMsg:  .asciiz "\nResults: "
summ:  .asciiz "Addition :"
subtract:  .asciiz "Subtrction :"
multiply:  .asciiz "Multiplication :"
divide:  .asciiz "Division :"
newLine: .asciiz "\n"

.text
.globl main
main:
    l.d $f2,num1
    l.d $f4,num2
    
    add.d $f6,$f4,$f2
    mov.d $f12,$f6
    
    li $v0, 4
    la $a0, summ
    syscall
    
    li $v0, 3
    la $a0, summ
    syscall
    
    li $v0, 4
    la $a0, newLine
    syscall

    sub.d $f6,$f2,$f4
    mov.d $f12,$f6
    
    li $v0, 4
    la $a0, subtract
    syscall
    
    li $v0, 3
    la $a0, subtract
    syscall
    
    li $v0, 4
    la $a0, newLine
    syscall    
    
    mul.d $f6,$f4,$f2
    mov.d $f12,$f6
    
    li $v0, 4
    la $a0, multiply
    syscall
    
    li $v0, 3
    la $a0, multiply
    syscall
    
    li $v0, 4
    la $a0, newLine
    syscall

    div.d $f6,$f2,$f4
    mov.d $f12,$f6
    
    li $v0, 4
    la $a0, divide
    syscall
    
    li $v0, 3
    la $a0, divide
    syscall
    
    li $v0, 4
    la $a0, newLine
    syscall

    li $v0, 10
    syscall
    