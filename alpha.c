#include <stdio.h>
#include <stdlib.h>

int add(int a, int b);

int main(){
  int x = 3;
  int y = 2;
  add(x, y);
  add(7, 8);
  void * z = malloc(1000);
  printf("hello world");
  getchar();
}

int add(int a, int b){
  a++;
  b--;
  int c = a + b;
  return c;
}

