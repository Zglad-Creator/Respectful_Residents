dog = True
like_count = 0  # Initialize a counter to track how many times the user says "yes"
while dog:
  print("I like roblox")

  user_input = input("Do you still like roblox? y/n ").lower() # Ask the user if they still like Roblox and check for response
  if user_input == "n" or user_input == "no": # Program exits the loop if the user enters either "no" or "n"
    print(f"Okay, stopping now! You said you liked roblox {like_count} times.")
    dog = False # Ends the loop if the answer is no
