import random

print("Good morning ")
dog = True
like_count = 0  
roblox = 100000
cat = True
print("bon is funny")

while dog:
    print("I like roblox")
    user_input = input("Do you still like roblox? y/n ").lower()
    if user_input in ["n", "no"]:
        print(f"Okay, stopping now! You said you liked roblox {like_count} times.")
        dog = False  

    print("bon is funny")
    print("clutch!!")
    print("random chaos incoming...")
    like_count += 1

    roblox_change = random.randint(-1000, 1000)
    roblox += roblox_change
    print("Roblox fluctuation:", roblox_change, "| New roblox value:", roblox)

    chaos_multiplier = like_count * roblox_change
    chaos_level = chaos_multiplier + roblox_change
    if chaos_level > 5000:
        print("🚨 CHAOS OVERLOAD DETECTED! Initiating slow-motion mode...")
    elif chaos_level < 0:
        print("💤 Negative chaos... did we break the matrix?")
    else:
        print("Chaos status: Stable... for now.")