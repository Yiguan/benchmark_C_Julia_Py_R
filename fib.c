#include <stdio.h>
#include <stdlib.h>

int fib(int n)
{
    if(n==0) return 0;
    if(n==1 | n==2) return 1;
    return fib(n-1) + fib(n-2);
}

int main(int argc, char * argv[])
{
    int N = atoi(argv[1]);
    printf("%d\n", fib(N));
    return 0;
}
