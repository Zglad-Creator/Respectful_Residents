import unittest
from joiner import check_dog

class TestCheckDog(unittest.TestCase):
    def test_dog_true(self):
        # Simulate dog being True
        dog = True
        self.assertTrue(check_dog(dog))

    def test_dog_false(self):
        # Simulate dog being False
        dog = False
        self.assertFalse(check_dog(dog))

    def test_dog_none(self):
        # Simulate dog not defined (None)
        dog = None
        self.assertFalse(check_dog(dog))

    def test_dog_other_types(self):
        # Non-boolean values
        self.assertFalse(check_dog(0))
        self.assertFalse(check_dog(""))
        self.assertFalse(check_dog([]))

if __name__ == "__main__":
    unittest.main()
