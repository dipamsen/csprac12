# Arr -> stack implemented by list
def PUSH(Arr, elt):
    Arr.append(elt)


Arr = [23, 30, 34, 91, 29, 48, 35, 90, 27]
stack = []
for num in Arr:
    if num % 5 == 0:
        PUSH(stack, num)
if len(stack) > 0:
    print(stack)
else:
    print("Stack is empty!")
