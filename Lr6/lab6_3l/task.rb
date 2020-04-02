def scale2(b, l)
  i = -1.0
  max = -10
  m = 0
  loop do
    i += 0.001
    break if i >= 1.0
    (max = l.call i) if max < l.call(i)
    m = b / max
  end
  m
end
