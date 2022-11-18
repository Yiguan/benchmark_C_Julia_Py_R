N = parse(Int64, ARGS[1])
function Fib(n)
    if n==0
         return 0
    end
    if n in [1,2]
        return 1
    end
    return Fib(n-1) + Fib(n-2)
end

print(Fib(N))
