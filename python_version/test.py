import unittest
import main as m

class TestTrialMethods(unittest.TestCase):

  def test_base(self):
      self.assertEqual(m.trial(0), 0)
  def test_2(self):
      self.assertEqual(m.trial(2), 1)
  def test_5(self):
      self.assertEqual(m.trial(5), 5)

  def test_all(self):
      expected = [0, 1, 7, 2, 5, 8, 16, 3, 19, 6]
      actual = list(map(m.trial,range(1,11)))
      self.assertEqual(actual,expected)


if __name__ == '__main__':
    unittest.main()