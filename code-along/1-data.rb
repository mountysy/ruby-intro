# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 1-data.rb

# In Ruby, there are different *types* of data:

# Numbers
puts 2
puts 3
puts 5+2
puts 5-2
puts 5*2
puts 5/2.0

# Non-numbers
puts "hello world!"
puts "tacos are" + "delish"
puts "tacos" *3
puts "tacos:" +3.to_s


# True, False
puts true
puts false


# Nothing
puts nil 

# Variables
x = 10
y = 3
puts x * y

food = "tacos"
quantity = 3
puts food*quantity 

# Combine strings and variables

first_name = "boba"
greeting = "hello,#{first_name}"
puts greeting 

puts "tacos: #{quantity}"
puts "#{food}: #{quantity}"

# String manipulation
puts "hello".length 
puts "how are you?".capitalize
puts "computer".reverse
puts 