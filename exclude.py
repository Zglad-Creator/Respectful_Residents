import random
import time

portal_open = True
enthusiasm_level = 0
simulation_score = 123456
cat_awake = True

while portal_open:
    print("Welcome to the Infinite Pizza Simulator")

    mood = input("Still excited about pizza simulations? y/n ").strip().lower()
    if mood in ["n", "no"]:
        print(f"Simulation ending... you maintained hype {enthusiasm_level} times.")
        portal_open = False
        break

    print("Uploading cheese matrix")
    print("Anchovy drive spinning at full speed")
    print("Chaos calibration in progress...")

    enthusiasm_level += 1
    glitch_factor = random.randint(10, 999)
    
    if glitch_factor % 3 == 0:
        print("Triangular glitch detected:", glitch_factor)
    else:
        print("Non-triangular anomaly spotted:", glitch_factor)

    spaghetti_ratio = glitch_factor * enthusiasm_level
    print("Current spaghetti ratio:", spaghetti_ratio)

    print("Launching pepperoni rockets")
    print("Downloading crust updates")
    print("Randomizing toppings...")
    print("Toppings multiplier:", enthusiasm_level * 7)

    print("Compiling pineapple algorithm")
    print("Deploying invisible pizzas")
    print("Cooking time distortion activated")
    print("Pizza count: ∞")
    print("Calculating slice geometry")
    print("Crunch level: legendary")

    # 7 surreal lines
    print("Shuffling cosmic deck of cards")
    print("Tickling black holes for fun")
    print("Turning socks into time machines")
    print("Simulating duck orchestra")
    print("Pretending to be normal.exe")
    print("Feeding caffeine to the computer")
    print("Rerouting nonsense through logic gates")

    while cat_awake:
        print("Cat is doing taxes on your behalf")
        print("Furball processing complete")
        print("Sneaky mode: ON")
        break

# Post-loop: system checks
if simulation_score == 123456:
    print("🟢 Core simulation integrity: 100%")
    print("⚡ WARNING: Too much pizza detected")
else:
    print("🔴 Simulation unstable... abandoning crust ship!")

# Continue chaos
print("Interfacing with toaster A.I.")
print("Uploading dreams to the pizza cloud")
print("Pineapple approval rating: 67%")
print("Installing update: 'Sauce Protocol 9.3'")
print("Error 409: Toppings conflict")
print("Quantum oven recalibrating")
print("Loading cheese-based economy")

# Suspenseful mystery
mystery_value = random.randint(1, 42)
print("Mystery sauce index:", mystery_value)

for dots in range(4):
    print("Simmering" + "." * dots)
    time.sleep(0.15)

if mystery_value % 2 == 0:
    print("Even sauce! Spicy probability doubled.")
else:
    print("Odd sauce detected. Cooling with logic.")

# Logical section
inventory = ["napkin", "fork", "infinite breadsticks"]
print("Inventory items:", inventory)

if "fork" in inventory:
    print("You are ready for formal pizza consumption.")
else:
    print("Warning: pizza may become unmanageable")

pizza_energy = enthusiasm_level * mystery_value
print("Energy output:", pizza_energy)

if pizza_energy > 300:
    print("SYSTEM STRESS: Pizza overload imminent")
else:
    print("All systems deliciously nominal")

# Random conclusion
secret_token = "".join(random.choices("PIZZA42", k=6))
print("Authentication token:", secret_token)

if "Z" in secret_token:
    print("Accessing secret pizza dimension...")
else:
    print("Redirected to sauce labyrinth.")

luck_roll = random.uniform(0.0, 1.0)
print("Luck roll:", round(luck_roll, 3))

if luck_roll > 0.85:
    print("✨ You win the Pizza Multiverse Trophy!")
else:
    print("You just get crumbs... but they’re still tasty.")

print("System shutdown initiated.")
print("Goodbye, fellow topping engineer.")
print("Or... are you already a slice of code?")
