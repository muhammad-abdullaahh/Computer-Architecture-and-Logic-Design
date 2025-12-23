.data
inputYear: .asciiz "Enter your birth year:"
currentYear: .word 2025
secInYear: .word 31536000
resMsgYears:  .asciiz "Your age in years: "
resMsgSec:  .asciiz "Your age in seconds: "
newLine: .asciiz "\n"

.text
.globl main
main:
    
    
    li $v0,4
    la $a0,inputYear
    syscall
    
    li $v0,5
    syscall
    
    move $t0,$v0
    
    lw $t1,currentYear
    
    sub $t2,$t1,$t0
    
    li $v0,4
    la $a0,resMsgYears
    syscall

    li $v0,1
    move $a0, $t2
    syscall
        
    li $v0,4
    la $a0,newLine
    syscall
    
    lw $t3, secInYear     
    mul $t4, $t2, $t3    

    li $v0, 4
    la $a0, resMsgSec
    syscall

    li $v0, 1
    move $a0, $t4
    syscall

    li $v0, 10
    syscall
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   