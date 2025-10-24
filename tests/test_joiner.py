import unittest
import importlib
import joiner


class TestJoinerGlobalDog(unittest.TestCase):
    def setUp(self):
        # Reload the module before each test to reset its state
        importlib.reload(joiner)

    def test_dog_true(self):
        joiner.dog = True
        self.assertTrue(joiner.check_dog(), "Should return True when dog is True")

    def test_dog_false(self):
        joiner.dog = False
        self.assertFalse(joiner.check_dog(), "Should return False when dog is False")

    def test_dog_not_defined(self):
        # Remove dog from module and reload
        if hasattr(joiner, "dog"):
            delattr(joiner, "dog")
        importlib.reload(joiner)
        self.assertFalse(joiner.check_dog(), "Should return False if dog is not defined")

    def test_dog_wrong_type(self):
        joiner.dog = "yes"
        self.assertFalse(joiner.check_dog(), "Should return False if dog is not a boolean")

if __name__ == "__main__":
    unittest.main()
