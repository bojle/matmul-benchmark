all: matmul-static matmul-malloc matmul-float matmul-double matmul-int64

matmul-static: matmul-static.c
	gcc -o matmul-static $<

matmul-malloc: matmul-malloc.c
	gcc -o matmul-malloc $<

matmul-float: matmul-float.c
	gcc -o matmul-float $<

matmul-double: matmul-double.c
	gcc -o matmul-double $<

matmul-int64: matmul-int64.c
	gcc -o matmul-int64 $<

run: all
	@echo "Running matmul-static"
	@./matmul-static
	@echo "Running matmul-malloc"
	@./matmul-malloc
	@echo "Running matmul-float"
	@./matmul-float
	@echo "Running matmul-double"
	@./matmul-double
	@echo "Running matmul-int64"
	@./matmul-int64
	@echo "Running matmul-int64"
	@./matmul-int64
	@./bench.py
