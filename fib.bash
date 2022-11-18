gcc fib.c -o fib.out
conda activate 

for n in 5 10 15 20 25 30 35 40;do
    hyperfine  --export-csv "fib_${n}.csv" "./fib.out ${n}" "julia fib.jl ${n}" "python3 fib.py ${n}" "Rscript fib.R ${n}" 
done
