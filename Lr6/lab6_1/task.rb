def func(accurancy)
  s = 0
  i = 0
  loop do
    i += 1
    sum = (-1)**(i - 1) / i.to_f
    s += sum
    break if (s <= Math.log(2) + accurancy) && (s >= Math.log(2) - accurancy)
  end
  print "Number of iterations: #{i}\n"
  s
end
