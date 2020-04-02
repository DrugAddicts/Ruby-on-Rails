require_relative 'task.rb'
require 'minitest/autorun'
#
class Dtest < Minitest::Test
  def setup
    @const1 = 'fgfbfgeyr'
    @const2 = 9
    @const3 = 7
  end

  def test_class
    assert(Intnum < Word)
  end

  def test_word_value
    w = Word.new('fgfbfgeyr')
    assert_equal(w.print_len, @const2)
  end

  def test_intnum_value
    int = Intnum.new('fgfbfgeyr')
    assert_equal(int.consonants, @const3)
  end
end
