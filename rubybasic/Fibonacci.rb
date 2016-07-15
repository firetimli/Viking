def fibonacci range
  value1 = 2
  value2 = 3
  sum = 0
  while value2 < range
    value1 = value1 + value2
    value2 = value2 + value1
    if value1%2 == 0
      sum = sum + value1
    elsif value2%2 == 0
      sum = sum + value2
    end
  end
  sum+2
end

  puts"#{fibonacci 4000000}"
