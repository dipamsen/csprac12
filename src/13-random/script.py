import random

lo = int(input("Enter lower bound: "))
hi = int(input("Enter upper bound: "))

lst = []

while len(lst) < 5:
  num = random.randint(lo + 1, hi - 1)
  if num % 2 == 0:
    lst.append(num)

print("The list of numbers is: ", end="")
print(lst)
