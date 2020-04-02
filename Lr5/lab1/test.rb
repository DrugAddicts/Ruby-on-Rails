require_relative 'task.rb'
require 'minitest/autorun'
#
class Dtest < Minitest::Test
  def setup
    @const1 = -1.0
    @const2 = -0.25
    @const3 = -0.04
    @const4 = -0.01
    @const5 = 'Incorrect date'
  end

  def test_min_value
    assert_equal(func(1), @const1)
  end

  def test_max_value
    assert_equal(func(2), @const2)
  end

  def test_max2_value
    assert_equal(func(5), @const3)
  end

  def test_max3_value
    assert_equal(func(10), @const4)
  end

  def test_max4_value
    assert_equal(func(0), @const5)
  end
end
