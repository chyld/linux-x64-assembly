.data
message:
  .ascii "Hello World\n"
byte
  .byte 1
int
  .int 2
short
  .short 3
float
  .float 3.14
array
  .int 3,5,7,9

.bss
  .comm buffer, 10000

.text
.global  _start
_start:
  movq $1, %rax       # write syscall 1
  movq $1, %rdi       # use fd 1
  movq $message, %rsi # send char* to rsi
  movq $0xc, %rdx     # print out 12 characters
  syscall

  movq $60, %rax      # exit syscall 60
  movq $0, %rdi       # arg 0, success
  syscall

