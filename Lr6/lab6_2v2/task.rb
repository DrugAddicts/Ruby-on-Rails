def func(t, sum, i, log)
  summm = Enumerator.new do |yielder|
    loop do
      i += 1
      sum += (-1)**(i - 1) / i.to_f
      yielder.yield sum
    end
  end
  summm.take_while { |s| (s > log + t) || (s < log - t) }
  print "Number of iterations: #{i}\n"
  sum
end
