dog = True
while dog:
  print("I like roblox")

  user_input = input("Do you still like roblox? y/n").lower() # Ask the user if they still like Roblox and check for response
  if user_input == "n" or user_input == "no": # Program exits the loop if the user enters either "no" or "n"
    dog = False # Ends the loop if the answer is no
print("Connected to server")
