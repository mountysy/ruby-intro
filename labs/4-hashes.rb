# DON'T CHANGE THIS CODE
# ----------------------
require "net/http"
require "json"
url = "https://api.coindesk.com/v1/bpi/currentprice.json"
uri = URI(url)
response = Net::HTTP.get(uri)
bitcoin_data = JSON.parse(response)
# ----------------------

# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# EXERCISE
# Ask the user for the current amount of Bitcoin that they own.
# Using the Ruby hash `bitcoin_data`, display a summary of
# Bitcoin data for the user. Something like the output below.

# Sample output:
# 1 Bitcoin is valued at $41405.1046 USD.
# Your Bitcoin is worth $62107.6569.

# 1. Get input from a user using gets.chomp.
puts "How much bitcoin do you have?"
bitcoin = gets.chomp

# 2. The value will be a string, so you'll want to convert it to a Float.
bitcoin = bitcoin.to_f

# 3. inspect the bitcoin_data hash
# puts bitcoin_data
# puts bitcoin_data ["time"]["updated"]
# puts bitcoin_data ["chartName"]
# puts bitcoin_data ["bpi"]["USD"]["symbol"]
# puts bitcoin_data ["bpi"]["EUR"]["rate_float"]

# puts bitcoin_data

# rate = bitcoin_data["bpi"]["USD"]["rate_float"]
# value = rate * bitcoin
# puts "1 bitcoin is valued at #{rate}"
# puts "your bitcoin is worth #{value}"

puts "what currency do you use?"
currency = gets.chomp


if currency == "USD"  
    rate = bitcoin_data["bpi"]["#{currency}"]["rate_float"]
    value = rate * bitcoin
    puts "1 bitcoin is valued at #{rate} #{currency}"
    puts "your bitcoin is worth #{value} #{currency}"
elsif currency == "GBP"  
    rate = bitcoin_data["bpi"]["#{currency}"]["rate_float"]
    value = rate * bitcoin
    puts "1 bitcoin is valued at #{rate} #{currency}"
    puts "your bitcoin is worth #{value} #{currency}"
elsif currency == "EUR" 
    rate = bitcoin_data["bpi"]["#{currency}"]["rate_float"]
    value = rate * bitcoin
    puts "1 bitcoin is valued at #{rate} #{currency}"
    puts "your bitcoin is worth #{value} #{currency}"
else
    puts "Error. Please try again."

end


#alternative 1

if rate = bitcoin_data["bpi"]["#{currency}"] == nil
    puts "Currency not supported. Please try again."
else
    rate = bitcoin_data["bpi"]["#{currency}"]["rate_float"]
    value = rate * bitcoin
    puts "1 bitcoin is valued at #{rate} #{currency}"
    puts "your bitcoin is worth #{value} #{currency}"
end


#alternative 2

if ["USD", "GBP", "EUR"].include?(currency.upcase)  # array.include?(value) will return true if the value is inside the array, and false if the value is not inside the array
    rate = bitcoin_data["bpi"]["#{currency}".upcase]["rate_float"]
    value = rate * bitcoin
    puts "1 bitcoin is valued at #{rate} #{currency}"
    puts "your bitcoin is worth #{value} #{currency}"
else
    puts "Currency not supported. Please try again."
end 
