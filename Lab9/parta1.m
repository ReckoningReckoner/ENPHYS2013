addpath('../Utils/')

C = cdft([1 2 3 4])
v = cidft(C)

C = cdft([1 2 3 4 5])
v = cidft(C)
