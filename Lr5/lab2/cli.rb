require_relative 'task.rb'

print "\nEnter wight of strings "
wig = gets.chomp.to_i
print 'Enter number of string  '
a = gets.chomp.to_i
i = 0
mas = []
loop do
  print 'Enter string  '
  st = gets.chomp
  mas[i] = fmas(st, wig)
  i += 1
  break if i == a
end

func(mas, wig)
