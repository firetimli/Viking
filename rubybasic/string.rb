greeting="Hello everyone"

one=["this","is","an","array"]
one.sort
# print one

# hash and key vlaues
fruits={"orange" => 8, "apples" => 5, "strawberry"=>20, "watermelon" =>2}
puts"There are #{fruits['orange']} oranges in the store"

# conditional branching/Instrucion
def water_status(minutes)
  if minutes <7
    puts"The water is not boiling yet."
  elsif minutes ==7
    puts"The water is barely boiling"
  elsif minutes ==8
    puts"It's boiling"
  else
    puts"Hot"
  end
end

water_status(5)

# Nil & Nothingess
# nil=null

class Student
  attr_accessor :first_name, :last_name,:primary_phone_number

  def introduciton(target)
    puts"Hi #{target}, I'm #{first_name}!"
  end

  def favorite_number
    7
  end
end

frank=Student.new
frank.first_name ="Frank"
puts"Frank's favorite number is#{frank.favorite_number}"
