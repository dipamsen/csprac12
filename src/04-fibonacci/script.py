def fibonacci(n):
  # start off with 0 and 1
  a, b = 0, 1
  series = [a, b]
  while len(series) < n:
    # add the next number
    series.append(a + b)
    # a and b now point to the next two numbers
    # a points to b, b points to a+b
    a, b = b, a + b
  return series


num = int(input("Enter number of terms of Fibonacci Sequence: "))
vals = fibonacci(num)
for val in vals:
  print(val, end="\t")
