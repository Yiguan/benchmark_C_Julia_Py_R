gcc prime.c -o prime.out

for n in 100 1000 2000 5000 10000 20000 50000 100000 200000 500000;do
    hyperfine --export-csv "prime_${n}.csv" "./prime.out ${n}" "julia prime.jl ${n}" "python3 prime.py ${n}" "Rscript prime.R ${n}"
done

