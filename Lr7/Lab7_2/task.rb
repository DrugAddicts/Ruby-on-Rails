#
class Word
  attr_reader :word
  def initialize(word)
    @word = word
  end

  def print_w
    puts "Значение поля: #{@word}"
  end

  def print_len
    print 'Количество букв в слове: '
    @word.size
  end
end
#
class Intnum < Word
  attr_reader :len_w
  def initialize(word)
    super(word)
    @len_w = @word.length
  end

  def consonants
    cons = []
    @word.scan(/[BCDFGHJKLMNPRSTVbcdfghjklmnprstvWwXxZz]/) do |m|
      cons << m
    end
    print 'Количество согласных букв: '
    cons.length
  end
end
