def is_palindrome(num):
  s = str(num)
  if s == s[::-1]:
    return True
  return False


def is_armstrong(num):
  n = len(str(num))
  total = 0
  for digit in str(num):
    total += int(digit)**n
  if total == num:
    return True
  return False


while True:
  print("======================")
  print("Menu")
  print("======================")
  print()
  print("1. Check if number is Palindrome")
  print("2. Check if number is Armstrong")
  print("3. Exit")
  choice = input("Enter your choice (1-3): ")
  if choice == 1:
    num = input("Enter your number")
    if is_palindrome(num):
      print("Your number is a palindrome!")
    else:
      print("Your number is not a palindrome!")
  elif choice == 2:
    num = input("Enter your number")
    if is_armstrong(num):
      print("Your number is armstrong!")
    else:
      print("Your number is not angstrom!")
  elif choice == 3:
    break
  else:
    continue
