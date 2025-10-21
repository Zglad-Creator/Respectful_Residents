# New logic-based chaos: Time travel simulation
time_travel_enabled = random.choice([True, False])
print("Time travel module status:", "Enabled" if time_travel_enabled else "Disabled")

if time_travel_enabled:
    print("Traveling to the year", random.randint(3020, 9999))
    paradox_level = random.randint(1, 10)
    print("Paradox level:", paradox_level)
    if paradox_level > 7:
        print("WARNING: Timeline instability detected!")
    else:
        print("Timeline relatively stable... for now.")
else:
    print("Time travel unavailable. Please reboot your DeLorean.")

# Alien encounter simulation
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

# Add a mini-quest decision
quest = input("A mysterious portal appears. Do you enter it? y/n ").lower()
if quest in ['y', 'yes']:
    realm = random.choice(["Waffle Dimension", "Upside Down Library", "Haunted Codebase"])
    print(f"You've entered the {realm}!")
    challenge_rating = random.randint(1, 100)
    print("Challenge rating:", challenge_rating)
    if challenge_rating > 50:
        print("It's dangerous! You need backup.")
    else:
        print("You handle it like a pro—epic win!")
else:
    print("You wisely walk away. The portal sighs in disappointment.")

# Add another layer of random logic
meme_quality = random.randint(0, 10)
print("Meme quality score:", meme_quality)
if meme_quality < 3:
    print("Too stale. Try again.")
elif meme_quality < 7:
    print("Mediocre meme. Slight chuckle achieved.")
else:
    print("Legendary meme! You broke the simulation.")

# Final print storm
print("Reality now bending...")
print("Frogs with jetpacks incoming")
print("Downloading more bananas...")
print("Error 008: Too much awesome")
print("The rubber duck army salutes you")
print("A wild potato appears")
print("Your keyboard is now a musical instrument")
print("Good job! Or terrible mistake?")
print("Rolling out the red carpet of destiny...")
print("End of chaos... just kidding.")
