#!/usr/bin/env python

import timeit
import numpy as np

def benchmark(dtype):
    np.dot(x, x)

for dtype in ['float32', 'float64', 'int32', 'int64']:
    x = np.random.normal(size=(1000, 1000)).astype(dtype)
    print(f"Running numpy-{dtype}")
    time_taken = timeit.timeit(lambda: benchmark(dtype), number=1)
    print(f"Time Taken: {time_taken}")
