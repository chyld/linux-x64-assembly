#include <stdio.h>

char* s1 = "Hello";

int main(){
  char* s2 = "Goodbye";
  printf("literal");
  printf("--%s--", s1);
  printf("++%s++", s2);
}

