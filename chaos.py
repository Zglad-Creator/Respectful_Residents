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
        cat_event = random.choice(["nap", "hack_system", "vanish", "meow_loop"])
if cat_event == "hack_system":
    print("🐱 Cat is hacking the mainframe!")
    roblox -= 42  
elif cat_event == "meow_loop":
    print("Cat is stuck in an infinite meow loop. Send help.")

debug_mode = random.choice([True, False])
if debug_mode:
    print("[DEBUG MODE ENABLED] Diagnostic data streaming...")

random_value = random.randint(1, 100)
if random_value % 2 == 0:
    print("Even chaos level detected:", random_value)
else:
    print("Odd chaos level detected:", random_value)

chaos_multiplier = like_count * random_value
print("Chaos multiplier is:", chaos_multiplier)