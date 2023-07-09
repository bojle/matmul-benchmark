#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
	 volatile int *mat1 = (int *) calloc(sizeof(int), 1000 * 1000);
	 volatile int *mat2 = (int *) calloc(sizeof(int), 1000 * 1000);
	 volatile int *mat3 = (int *) calloc(sizeof(int), 1000 * 1000);

	srand(time(NULL));
	for (int i = 0; i < 1000; i++) {
		for (int j = 0; j < 1000; j++) {
			mat1[i*1000 + j] = rand() % 1000;
 			mat2[i*1000 + j] = rand() % 1000;
		}
	}

	int t;
	clock_t tim1 = clock();
	for (int i = 0; i < 1000; i++) {
		for (int j = 0; j < 1000; j++) {
			t = 0;
			for (int k = 0; k < 1000; k++)
				t += mat1[i*1000 + k] * mat2[k*1000 + j];
			mat3[i*1000 + j] = t;
		}
	}
	clock_t tim2 = clock();

	printf("Time taken: %lf\n", (double) (tim2 - tim1) / CLOCKS_PER_SEC);
	return 0;
}
