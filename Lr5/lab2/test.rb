require_relative 'task.rb'
require 'minitest/autorun'
#
class Dtest < Minitest::Test
  def setup
    @const1 = ['tt  u y', 'tt  t t']
    @const2 = ['au  y  rti', 'tfb   fgyy', 'r   u   oi']
    @const3 = ['t    u    y', 't  t  t ttf', 'uit     rew']
  end

  def test_min_value
    assert_equal(func(['tt u y', 'tt t t'], 7), @const1)
  end

  def test_min2_value
    assert_equal(func(['au y rti', 'tfb fgyy', 'r u   oi'], 10), @const2)
  end

  def test_min3_value
    assert_equal(func(['t u y', 't t t  ttf', 'uit rew'], 11), @const3)
  end
end
