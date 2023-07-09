# matmul-benchmark

matmul-benchmark is a set of matrix multiplying programs that I use for 
benchmarking different machines that I encounter.

Not the most accurate scientifically (or any ADJECTIVE-cally, for the matter),
itz for the funz :)

These are the tests:

1. **matmul-static**: matmul with `static`ally allocated int32 matrices
2. **matmul-O3**: same with O3 optimizations turned on
3. **matmul-O2**: same with O2 optimizations turned on
4. **matmul-malloc**: matmul with mallocated int32 matrices
5. **matmul-double**: matmul with double precision floats
6. **matmul-float**: matmul with single precision floats
7. **matmul-int64**: matmul with 64 bit ints
8. **matmul.py**: numpy based matmuls on float{32,64}, int{32,64}

Just
```
$ git clone https://github.com/bojle/matmul-benchmark
$ make run
```
and let it warm your processor
