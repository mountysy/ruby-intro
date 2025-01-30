# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 2-conditionals.rb

# Booleans

test_is_true = true
puts test_is_true

test_is_false = false
puts test_is_false

# Boolean Expressions

puts 3==2
puts 3!=2
puts 3>2
puts 3<2


# If Conditional Logic

if 3==2
    puts "This text should never be displayed"
end

if 3>2
    puts "This text should always be displayed"
end

# If/Else Conditional Logic

if 3==2
    puts "This text should never be displayed"
else 
    puts "This text should always be displayed"
end


user_entered_password = "tacos"
real_password = "secret"

if user_entered_password == real_password
        puts "your password matches. you are logged in!"
else 
        puts "wrong password, try again"
end 

bank_account_balance = 51

if bank_account_balance > 50
    bank_account_balance = bank_account_balance - 50
    puts "$50 withdrawn"
else 
    puts "insufficient funds"
end

puts "Balance:#{bank_account_balance}"

# Elsif Conditional Logic

your_team_score = 2
other_team_score = 2
if your_team_score > other_team_score
  puts "Yay, your team won!"
elsif your_team_score == other_team_score
  puts "Ok, you tied ¯\_(ツ)_/¯"
else
  puts "Your team lost :("
end

# Combining Expressions

temp = 80
precipitation = 0

if temp>= 65 && temp <=75 && precipitation == 0
    puts "it's perfect outside" 
else 
    puts "don't go out"
end 

if temp>= 65 || temp <=75 || precipitation == 0
    puts "it's perfect outside" 
end 