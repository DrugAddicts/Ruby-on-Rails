require_relative 'task.rb'
require 'minitest/autorun'
#
class Dtest < Minitest::Test
  def setup
    @const1 = 119.03496002046231
    @const2 = 64.35058067322055
  end

  def test_min_value
    f1 = ->(x) { x.to_f * Math.sin(x) }
    assert_equal(scale2(100, f1), @const1)
  end

  def test_max_value
    f2 = ->(x) { Math.tan(x) }
    assert_equal(scale2(100, f2), @const2)
  end
end
