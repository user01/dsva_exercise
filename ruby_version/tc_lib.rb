# File:  tc_simple_number.rb

require_relative "lib"
require "test/unit"
 
class TestSimpleNumber < Test::Unit::TestCase
 
  def test_base
    assert_equal(0, Lib.trial(1) )
  end
  def test_simple
    assert_equal(5, Lib.trial(5) )
  end
  def test_many
    nums = 1..10
    responses = [0, 1, 7, 2, 5, 8, 16, 3, 19, 6]
    pair = nums.zip(responses)
    pair.each do |val,res|
      assert_equal(res, Lib.trial(val) )
    end
  end
 
end