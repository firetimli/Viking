
  def sum final
    sum=0
    (1..final).each do |i|
      if i%3==0 || i%5 ==0
        sum = sum+i;
      end
    end
      sum
  end

  puts"#{sum 9}"
