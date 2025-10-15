dog = True
like_count = 0  # Initialize a counter to track how many times the user says "yes"
roblox = 100000
cat = True

while dog:
    print("I like roblox")

    user_input = input("Do you still like roblox? y/n ").lower()  # Ask the user if they still like Roblox and check for response
    if user_input == "n" or user_input == "no":  # Program exits the loop if the user enters either "no" or "n"
        print(f"Okay, stopping now! You said you liked roblox {like_count} times.")
        dog = False  # Ends the loop if the answer is no
    
    print("bon is funny")
    print("clutch!!")
    print("random chaos incoming...")
    like_count += 1
    print(f"like_count is now {like_count}")
    print("snakes everywhere")
    print("launching into orbit")

    while cat:
        print("flag false")
        print("cat is plotting something...")
        print("error 404: mouse not found")
        break  # prevents infinite cat loop

if roblox == 100000:
    print("power on")
    print("do not unplug the mainframe!")
else:
    print("power off")

print("The end? Or just the beginning...")
