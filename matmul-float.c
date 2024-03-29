#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main(void) {
	static volatile float mat1[1000][1000];
	static volatile float mat2[1000][1000];
	static volatile float mat3[1000][1000];
	srand(time(NULL));
	for (int i = 0; i < 1000; i++) {
		for (int j = 0; j < 1000; j++) {
			mat1[i][j] = rand() % 500;
 			mat2[i][j] = rand() % 500;
		}
	}

	int t;
	clock_t tim1 = clock();
	for (int i = 0; i < 1000; i++) {
		for (int j = 0; j < 1000; j++) {
			for (int k = 0; k < 1000; k++)
				mat3[i][j] += mat1[i][k] * mat2[k][j];
		}
	}
	clock_t tim2 = clock();
	printf("Time taken: %lf\n", (double) (tim2 - tim1) / CLOCKS_PER_SEC);
	return 0;
}
