import random


def dice():
  return random.randint(1, 6)


print("🎲 Rolling the dice 🎲")
print("You got", dice(), "!")
