matmul-benchmark is a set of matrix multiplying programs that I use for 
benchmarking different machines that I encounter.

Not the most accurate scientifically (or any ADJECTIVE-cally, for the matter),
itz for the funz :)

These are the programs:

1. Traditional matmul (1000x1000) in C with gcc.
2. Same but with clang.
2. Same but with `-march=native`
3. Same but with `-O2,3`
4. Traditional matmul of 1000x1000 in python using python arrays
5. Same with numpy arrays
