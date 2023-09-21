import unittest
from character import character



class testcharacter(unittest.TestCase):

  def test_initialization(self):
        testobj = character()
 #       expected_name_value is notnull

        self.assertIsNotNone(testobj.value)


if __name__ == '__main__':
    unittest.main()