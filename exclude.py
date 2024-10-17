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
    

      print("Great! Let's keep going!")  # Keep looping if the user says "yes"
  else:
      print("Please enter a valid response (y/n)")  # Prompt again if the input is invalid
