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
aliens_present = random.choice([True, False])
if aliens_present:
    print("Alien contact established 👽")
    alien_language = "".join(random.choices("ΔΞΩ§†µ", k=8))
    print("Alien message received:", alien_language)
    print("Attempting universal translator...")
    translation_success = random.choice([True, False])
    if translation_success:
        print("Translation: 'Send more memes.'")
    else:
        print("Translation failed. Initiating interpretive dance.")
else:
    print("No aliens... just raccoons in space suits.")

quest = input("A mysterious portal appears. Do you enter it? y/n ").lower()
if quest in ['y', 'yes']:
    realm = random.choice(["Waffle Dimension", "Upside Down Library", "Haunted Codebase", "Infinite Loop Valley", "Quantum Playground"])
    print(f"You've entered the {realm}!")
    challenge_rating = random.randint(1, 100)
    print("Challenge rating:", challenge_rating)
    if challenge_rating > 50:
        print("It's dangerous! You need backup.")
    else:
        print("You handle it like a pro—epic win!")
    print("Collecting loot... found: a glowing rubber duck!")
    print("Portal guardian whispers: 'Beware the semicolons.'")
else:
    print("You wisely walk away. The portal sighs in disappointment.")
    print("You feel an odd sense of peace... and mild confusion.")
    meme_quality = random.randint(0, 10)
print("Meme quality score:", meme_quality)
if meme_quality < 3:
    print("Too stale. Try again.")
elif meme_quality < 7:
    print("Mediocre meme. Slight chuckle achieved.")
else:
    print("Legendary meme! You broke the simulation.")
print("Uploading meme to cloud storage of destiny...")
print("Analyzing meme quantum frequency... success!")