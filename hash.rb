# create a mapping of states to abbrevation
states = {
  'Oregon' => 'ON',
  'Florida' => 'Fl',
  'Califonia' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

# create a basic set of states and some cities in them
cities = {
  'CA' => 'San Franciso',
  'MI' => 'Detroit',
  'Fl' => 'Jacksonwill'
}

# add some more cities
cities['NY'] = 'New York'
cities ['OR'] = 'Portland'

#puts out some cities
puts '_' * 10
puts "NY states has #{cities['NY']}"
puts "OR states has #{cities['OR']}"

#puts some states
puts '_' * 10
puts "Michigan's abbrevation is: #{states['Michigan']}"
puts "Florida's abbrevation is: #{states['Florida']}"

# do it by using the state then cities dict
puts '_' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

# puts every state abbreviation
puts '_' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

# puts every city in states
puts '_'*10
cities.each do |city, abbrev|
  puts "#{abbrev} has the city #{city}"
end

# now do both at the same time
puts '_' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '_' * 10
# by default the ruby says 'nil' when something isn't there
state = states['Texas.']

if !state
  puts "Sorry, no Texas"
end

# default values using //= with the nil result
city = cities['TX']
city ||= 'Does Not Exist'
puts "The city for the state 'TX' is: #{city}"  
