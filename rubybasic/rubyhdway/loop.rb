the_count=[1, 2, 3, 4, 5]
fruits =['apples','oranges','peaches','strawberries']
change =[1,'gold',2,'silver',3, 'bronze']

for number in the_count
  puts "This is count #{number}"
end

fruits.each do |fruit|
  puts "A fruit of type: #{fruit}"
end

change.each{|i| puts "I got #{i}"}
elements = []

(0..5).each do |i|
  puts "adding #{i} to the list"
    elements.push(i)
  end

elements.each{|i| puts "Element was:#{i}"}
