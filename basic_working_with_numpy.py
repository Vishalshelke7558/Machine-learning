import numpy as np

mat = np.array([[1,2],[3,4]])

print(mat.shape)
print(mat.dtype)
print(mat)
mat[0,0] = 5
print(mat)

mat2 = np.arange(0,10,2) # use to create array with step size
print(mat2)

mat3 = np.linspace(0,10,5) # create a matrix upto 10 with 5 stps
print(mat3)

mat4 = np.random.rand(5,5) # it create a random matrix of 5*5
print(mat4)
print(mat4.shape)
print(mat4.dtype)

print(mat4[0,0]) # we can perform slicing on the matrix
print(mat4[0,1])