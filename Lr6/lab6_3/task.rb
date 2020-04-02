def scale2(b)
  i = -1.0
  max = -10
  m = 0
  loop do
    i += 0.001
    break if i >= 1.0
    max = (yield i) if (yield i) > max
    m = b / max
  end
  m
end
