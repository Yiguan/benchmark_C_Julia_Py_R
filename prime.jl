N = parse(Int64, ARGS[1])

for i in range(2,N,step=1)
    prime = true
    for j in range(2, i-1, step=1)
        res = i % j
        if res == 0
            prime = false
            break
        end
    end
    if prime
        println(i)
    end
end
