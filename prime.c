#include <stdio.h>
#include <stdlib.h>
int main(int argc, char * argv[])
{
    int N = atoi(argv[1]);
    for (int i=2; i<N;i++)
    {
        int prime = 1;
        for (int j=2; j<i; j++)
        {
            int res = i % j;
            if(res==0)
            {
                prime = 0;
                break;
            }
        }
        if (prime==1) printf("%d\n", i);
    }
    return 0;
}

