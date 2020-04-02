def func(x)
  x.to_f
  if (x == (1.0 / 6)) || x.zero?
    'Incorrect date'
  else
    a = Math.cos((5 * x / (1 - 6 * x)))
    -(a**(1 / 2) / x**2)
  end
end
