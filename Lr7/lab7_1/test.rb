require_relative 'task.rb'
require 'minitest/autorun'
#
class Dtest < Minitest::Test
  def setup
    @const1 = "adrtyhj =-=t eyy\n"
    @const2 = "adebtj =-=t eyy\naaabb =e-o\n"
  end

  def test_min_value
    f = File.new('F.txt', 'w')
    f.puts 'adrTYhj =-=T eYY'
    f.close
    g = File.new('G.txt', 'w')
    f = File.new('F.txt', 'r')
    obr(f, g)
    f.close
    g.close
    assert_equal(post, @const1)
  end

  def test_max_value
    f = File.new('F.txt', 'w')
    f.puts 'adEbTj =-=T eYY'
    f.puts 'AAAbb =E-O'
    f.close
    g = File.new('G.txt', 'w')
    f = File.new('F.txt', 'r')
    obr(f, g)
    f.close
    g.close
    assert_equal(post, @const2)
  end
end
