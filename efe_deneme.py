arr = [[1,2,3],
       [4,5,6]]


second_dim = len(arr[0])
shape = (len(arr),second_dim) 

print(f"shape of arr: {shape}")

import numpy as np

np_arr = np.array(arr)

print(np_arr)
print(f"shape of np_arr: {np_arr.shape}")