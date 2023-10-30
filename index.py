def count_occ(str, ch):
    count = 0
    for i in str:
        if i == ch:
            count += 1
    return count


val = input("Enter a string: ")
c = input("Enter a character: ")
num = count_occ(val, c)

print()
print("The character occurs " + str(num) + " times in the string.")
