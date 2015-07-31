@edu = 0
@child = 0
@anim = 0
@poor = 0
@enviro = 0
def add(a,b,c,d,e)
  @edu += a
  @child += b
  @anim += c
  @poor += d
  @enviro += e
end
puts "Which of the following categories interests you the most?"
puts "1. Education"
puts "2. Working with children/kids"
puts "3. Working with animals"
puts "4. Aiding the homeless"
puts "5. Aiding/working with the enviroment"
choice1 = gets.chomp
if choice1 == "1"
  add(5,0,0,0,0)
elsif choice1 == "2"
  add(0,5,0,0,0)
elsif choice1 == "3"
  add(0,0,5,0,0)
elsif choice1 == "4"
  add(0,0,0,5,0)
elsif choice1 == "5"
  add(0,0,0,0,5)
end
puts "Question 1: Are you capable of/enjoy manual labor?"
puts "1. Yes"
puts "2. No"
choice1 = gets.chomp
if choice1 == "1"
  add(0,0,2,2,2)
  elsif
  add(1,1,0,0,0)
end
puts "Question 2: Are you comfortable working with people younger/older than yourself?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(2,2,0,0,0)
  elsif
  add(0,0,1,1,1)
end
puts "Question 3: Are you a 'people person'?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(2,2,0,0,0)
  elsif
  add(0,0,1,1,1)
end
puts "Question 4: Are you good at explaining things/teaching?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(2,0,0,0,0)
  elsif
  add(0,1,1,1,1)
end
puts "Question 5: Do you have a fear of animals?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(0,0,-500,0,0)
  elsif
  add(0,0,0,0,0)
end
puts "Question 6: Do you have a pet?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(0,0,2,0,0)
  elsif
  add(0,0,0,0,0)
end
puts "Question 7: Do you have children?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(0,4,0,0,0)
  elsif
  add(0,0,0,0,0)
end
puts "Question 8: Do you enjoy being/working outside?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(0,0,1,0,2)
  elsif
  add(1,1,1,1,0)
end
puts "Question 9: Do you enjoy helping other people?"
puts "1. Yes"
puts "2. No"
choice2 = gets.chomp
if choice2 == "1"
  add(1,2,0,2,0)
  elsif
  add(0,0,1,0,1)
end
puts "Question 10: Do you enjoy working with others or being on your own?"
puts "1. Working with others"
puts "2. Working alone"
choice2 = gets.chomp
if choice2 == "1"
  add(2,2,0,1,0)
  elsif
  add(0,0,2,0,2)
end
puts @edu
puts @child
puts @anim
puts @poor
puts @enviro