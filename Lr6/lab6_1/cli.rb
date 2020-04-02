require_relative 'task.rb'

print("Select accuracy\n 1- 10^(-2)\n 2- 10^(-4)\n")
st = gets.chomp
if st == '1'
  print "Sum of the series: #{func(10**-2)}"
else  print  "Sum of the series: #{func(10**-4)}"
end
print "\nExact value = #{Math.log(2)}"
