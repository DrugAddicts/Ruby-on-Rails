require_relative 'task.rb'

print 'Enter B '
b = gets.chop.to_i
print "Select function:\n1 - x * sin(x)\n2 - tg(x)\n"
v = gets.chop.to_i
f1 = ->(x) { x.to_f * Math.sin(x) }
f2 = ->(x) { Math.tan(x) }
if v == 1
  print "Scale for the x * sin(x) = #{scale2(b, f1)}"
else print "Scale for the tg(x) = #{scale2(b, f2)}"
end
