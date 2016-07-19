def gold_room
  puts"This room is full of gold. How much do you take?"

  print ">"
  choice = $stdin.gets.chomp

  if choice.include? ("0")
    how_much = choice.to_i
  else
    puts "e"
    gold_room
  end

  if how_much < 10
    puts "Nice, you are not greedy, you'll take the gold."
    exit(0)
  else
    puts "you greedy bastard."
  end
end

def bear_room
  puts "There is a bear here."
  puts "The bear has a bunch of honey"
  puts "The fat bear is in front of anohter door"
  puts "How are you going to move the bear ?"
  bear_moved = false
  print "take honey/taunt bear?"


while true
  print ">"
  choice = $stdin.gets.chomp


if choice == "take honey"
  dead("The bear looks at you then slaps your face off")
elsif choice == "taunt bear" && !bear_moved
  puts "The bear has moved from the door, you can go through it now"
  bear_moved = true
  print "open the door/taunt bear?>"
elsif choice == "taunt bear" && bear_moved
    dead("The bear gets pissed and chews your leg off")
elsif choice == "open door" && bear_moved
    gold_room
else
    puts "I got no idea what that means.."
    end
  end
end

def cthulu_room
  puts "Here you see the ancient god cthulu."
  puts "It stares at you and you go insame."
  puts "Do you flee for life or eat your head?"

print ">"
choice = $stdin.gets.chomp

if choice.include? "flee"
    start
  elsif choice.include? "head"
    dead("Well, that was tasty")
  else
    cthulu_room
  end
end

def dead(why)
  puts why, "Good job!"
  exit(0)
end

def start
  puts "You are in a dark room."
  puts "There is a door to your right and left."
  puts "Which one do you take?"

  print ">"
  choice = $stdin.gets.chomp

  if choice == "left"
    bear_room
  elsif choice == "right"
    cthulu_room
  else
    dead("you stumble around the room until you starve")
  end
end

start
