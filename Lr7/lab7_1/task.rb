def workf(n)
  zapol(n)
  f = File.new('F.txt', 'r')
  g = File.new('G.txt', 'w')
  obr(f, g)
  f.close
  g.close
  post
end

def zapol(n)
  f = File.new('F.txt', 'w')
  i = 0
  loop do
    st = (0...8).map { rand(65..122).chr }.join
    f.puts st
    i += 1
    break if i == n
  end
  f.close
end

def obr(f, g)
  f.each do |line|
    st = ''
    line.each_char do |ch|
      st << ch.gsub(/[A-Za-z]/, ch.downcase)
    end
    g.puts st
  end
end

def post
  f = File.new('F.txt', 'r')
  print "Содержимое файла F\n"
  puts  f.read
  f.close
  g = File.new('G.txt', 'r')
  print "\nСодержимое файла G\n"
  puts sg = g.read
  g.close
  sg
end

# def func
#   p c = rand(65..122).chr.to_sym
#   a = c.to_s.gsub(/[A-Za-z]/, c.to_s.downcase)
#   k = a.to_sym
#   puts a.to_sym
#   puts k.class
#   p a.class

# def test(f)
#   a = File.new(f, 'w')
#   a.puts 'fgghfghfhf'
#   a.close
# end
# test('A.txt')
