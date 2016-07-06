#include <stdio.h>
#include "trial.h"


int main(int argc, char *argv[])
{
    puts("Starting...");
    runTrial(2);
    runTrial(5);
    
    int tests[10] = {1,2,3,4,5,6,7,8,9,10};
    int results[10] = {0, 1, 7, 2, 5, 8, 16, 3, 19, 6};
    for (int i=0;i<10;i++){
      int result = trial(tests[i]);
      printf(" %i=>%i ",tests[i], result);
      if (result != results[i]) {
        printf(" !! Expected %i \n",results[i]);
      }
    }
    printf("\n");

    return 0;
}