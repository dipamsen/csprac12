# Arr -> stack implemented by list
def POP(Arr):
    if len(Arr) == 0:
        raise Exception("Underflow")
    item = Arr.pop()
    return item


Arr = [20, 40, 50, 60]
print("Initial stack:", Arr)
print("Started popping...")
try:
    while True:
        val = POP(Arr)
        print("Got", val)
except Exception:
    print("Underflow")
