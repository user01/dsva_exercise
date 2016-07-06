#include <stdio.h>
#include "trial.h"


int trial(int value) {
  int runs = 0;
  while(value > 1) {
    if (value % 2 == 0) {
      value /= 2;
    } else {
      value = (value * 3) + 1;
    }
    runs++;
  }
  return runs;
}

void runTrial(int value) {
  printf(" %i\n", trial(value));
}