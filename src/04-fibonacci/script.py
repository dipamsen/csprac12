def fibonacci(n):
    series = [0, 1]
    while len(series) < n:
        a = series[-1]
        b = series[-2]
        # next term = sum of last two terms
        series.append(a + b)
    return series


num = int(
    input("Enter length of Fibonacci Sequence: "))
vals = fibonacci(num)
for val in vals:
    print(val, end="\t")
