require_relative 'task.rb'

puts 'Введите любое слово'
a = gets.chomp
puts 'Объект слово'
word = Word.new(a)
puts "Значение поля #{word.word}"
puts 'Ответы на запросы:'
word.print_w
print word.print_len
puts "\nОбъект слово и число"
num = Intnum.new(a)
puts "Значение полей #{num.word} #{num.len_w}"
puts 'Ответы на запросы:'
num.print_w
print "#{num.print_len}\n"
print num.consonants
