.data
  input1: .asciiz "Enter the first number: "
  input2: .asciiz "Enter the second number: "
  input3: .asciiz "Enter the third number: "
  printSum: .asciiz "The sum is "
  averageDivisor: .double 3
  printAverage: .asciiz "The average is "
  newLine: .asciiz "\n"

.text
.globl main
main:
  li $v0, 4
  la $a0,input1
  syscall
  
  li $v0,7
  syscall
  mov.d $f2,$f0

  li $v0, 4
  la $a0,input2
  syscall
  
  li $v0,7
  syscall
  mov.d $f4,$f0
  
  li $v0, 4
  la $a0,input3
  syscall
  
  li $v0,7
  syscall
  mov.d $f6,$f0  
  
  add.d $f8,$f2,$f4
  add.d $f12,$f8,$f6
  
  li $v0,4
  la $a0,printSum
  syscall
  
  li $v0,3
  la $a0,printSum
  syscall
  
  li $v0,4
  la $a0,newLine
  syscall
  
  l.d $f2,averageDivisor
  div.d $f14,$f12,$f2
  mov.d $f12,$f14
  
  li $v0,4
  la $a0,printAverage
  syscall
  
  li $v0,3
  la $a0,printAverage
  syscall
  
  li $v0,4
  la $a0,newLine
  syscall
  
    li $v0, 10
    syscall
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
