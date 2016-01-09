.data

.text
  .globl  main
  .type   main, @function
main:
  # prologue
  pushq   %rbp
  movq    %rsp, %rbp

  # return 0
  movq    $0, %rax
  popq    %rbp
  ret
main.end:
  .size   main, .-main

