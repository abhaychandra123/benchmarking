import random
import time

def qsort_kernel(a, lo, hi):
    i = lo
    j = hi
    while i < hi:
        pivot = a[(lo+hi) // 2]
        while i <= j:
            while a[i] < pivot:
                i += 1
            while a[j] > pivot:
                j -= 1
            if i <= j:
                a[i], a[j] = a[j], a[i]
                i += 1
                j -= 1
        if lo < j:
            qsort_kernel(a, lo, j)
        lo = i
        j = hi
    return a

tmin = float('inf')
for i in range(5):
	lst = [ random.random() for i in range(1,5000) ]
	t = time.time()
	qsort_kernel(lst, 0, len(lst)-1)
	t = time.time()-t
	if t < tmin: tmin = t
print(tmin)