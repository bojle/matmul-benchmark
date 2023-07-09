all: matmul-static matmul-malloc matmul-float matmul-double matmul-int64 \
	matmul-O3 matmul-native-arch matmul-O2

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

matmul-O3: matmul-O3.c
	gcc -o matmul-O3 $< -O3

matmul-O2: matmul-O3.c
	gcc -o matmul-O2 $< -O2

matmul-native-arch: matmul-static.c
	gcc -o matmul-native-arch $< -march=native

run: all
	@echo "Running matmul-static"
	@./matmul-static
	@echo
	@echo "Running matmul-malloc"
	@./matmul-malloc
	@echo
	@echo "Running matmul-float"
	@./matmul-float
	@echo
	@echo "Running matmul-double"
	@./matmul-double
	@echo
	@echo "Running matmul-int64"
	@./matmul-int64
	@echo
	@echo "Running matmul-int64"
	@./matmul-int64
	@echo
	@echo "Running matmul-O3"
	@./matmul-O3
	@echo
	@echo "Running matmul-O2"
	@./matmul-O2
	@echo
	@echo "Running matmul-native-arch"
	@./matmul-native-arch
	@echo
	@./matmul.py
