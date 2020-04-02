require_relative 'task.rb'
log = Math.log(2)
print("Select accuracy\n 1- 10^(-2)\n 2- 10^(-4)\n")
st = gets.chomp
if st == '1'
  print "Sum of the series: #{func(10**-2, 0, 0, log)}"
else print "Sum of the series: #{func(10**-4, 0, 0, log)}"
end
print "\nExact value = #{Math.log(2)}"
