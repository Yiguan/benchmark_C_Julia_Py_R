
import sys
N = int(sys.argv[1])

def Fibonacci(n):
    if n==0:
        return 0
    if n in [1,2]:
        return 1
    return Fibonacci(n-1) + Fibonacci(n-2)

print(Fibonacci(N))

