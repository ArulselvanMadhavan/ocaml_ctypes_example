#include "foo.h"
#include <stdio.h>

int foo_init(void) {
  return 0;
}

int foo_fnubar(char * str){
  printf("%s\n", str);
  return 42;
}

void foo_exit(void) {
  printf("Exit called\n");
}
