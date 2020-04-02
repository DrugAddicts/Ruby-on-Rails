def sort(mas, i)
  loop do
    mas.each_with_index do |name, idm|
      if (idm != mas.length - 1) && (i != 0)
        name << ' '
        i -= 1
      end
    end
    break if i.zero?
  end
  mas.join('')
end

def printm(mass, st)
  print "\n#{st}\n"
  mass.each_index { |k| print "#{mass[k]}\n" }
end

def func(mas, len)
  printm(mas, 'Start massiv')
  mas.each_with_index do |name, id|
    next unless (name.length < len) && (name.split(' ').length != 1)
    i = len - name.split(' ').join('').length
    mas[id] = sort(name.split(' '), i)
  end
  printm(mas, 'End massiv')
end

def fmas(str, len)
  if str.length > len
    str[0...len]
  else str
  end
end
