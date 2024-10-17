dog = True
while dog:
  print("I like roblox")

  user_input = input("Do you still like roblox? y/n ").lower() # Ask the user if they still like Roblox and check for response
  if user_input == "n" or user_input == "no": # Program exits the loop if the user enters either "no" or "n"
    print("Okay, stopping now!")
    dog = False # Ends the loop if the answer is no
  elif user_input == "y" or user_input == "yes":
      print("Great! Let's keep going!")  # Keep looping if the user says "yes"
  else:
      print("Please enter a valid response (y/n)")  # Prompt again if the input is invalid


print("random number guesser")
import random
number = random.randint(1, 20)
guess = 0
while guess != random:
  guess = input("guess a number from 1 to 20: ")


print("heads or tails")
new_number = input("Do you think it is heads or tails, (1 is tails, 2 is heads)")
if new_number == 1:
  print("It was heads!")
elif new_number == 2:
  print("It was tails!")
else:
  print("input 1 or 2 nect time >:(")
