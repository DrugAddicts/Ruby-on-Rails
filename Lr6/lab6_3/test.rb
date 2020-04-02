require_relative 'task.rb'
require 'minitest/autorun'
#
class Dtest < Minitest::Test
  def setup
    @const1 = 119.03496002046231
    @const2 = 64.35058067322055
  end

  def test_min_value
    assert_equal(scale2(100) { |x| x.to_f * Math.sin(x) }, @const1)
  end

  def test_max_value
    assert_equal(scale2(100) { |x| Math.tan(x) }, @const2)
  end
end
