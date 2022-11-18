import sys
N = int(sys.argv[1])

for i in range(2,N,1):
    prime = True
    for j in range(2,i,1):
        res = i % j
        if res==0: 
          prime = False
          break
        #cnt = cnt + 1
    if prime: print(i)
