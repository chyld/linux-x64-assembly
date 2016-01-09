.data

.text
  .globl  main
  .type   main, @function
main:
  # prologue
  pushq   %rbp
  movq    %rsp, %rbp

  movq    $4, %rdi
  movq    $5, %rsi
  call    sum

  # epilogue
  leave
  ret
main.end:
  .size   main, .-main

