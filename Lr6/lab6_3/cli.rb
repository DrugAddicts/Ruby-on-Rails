require_relative 'task.rb'

print 'Enter B '
b = gets.chop.to_i
print "Select function:\n1 - x * sin(x)\n2 - tg(x)\n"
v = gets.chop.to_i
if v == 1
  print "Scale for the x * sin(x) = #{scale2(b) { |x| x.to_f * Math.sin(x) }}"
else print "Scale for the tg(x) = #{scale2(b) { |x| Math.tan(x) }}"
end
