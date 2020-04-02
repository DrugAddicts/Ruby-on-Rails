require_relative 'task.rb'
require 'minitest/autorun'
#
class Dtest < Minitest::Test
  def test_min_value
    assert_in_delta(func(10**-2), Math.log(2), 0.01)
  end

  def test_max_value
    assert_in_delta(func(10**-4), Math.log(2), 0.0001)
  end
end
