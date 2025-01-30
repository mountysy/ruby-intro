# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 5-loops.rb

# Infinite Tacos -> Finite Tacos
# loop do
#   puts "tacos!"
# end

# Loop through tacos
index = 0

loop do
    if index == 5
            break
    end

    puts "tacos!"

    index = index + 1 
end 

tacos = ["carnitas", "carne asada", "pollo", "pescado"]

index = 0

loop do
    if index == tacos.size
        break
    end 

    taco = tacos[index]
    puts "#{taco} tacos!"

    index = index + 1
end 

for item in tacos
    puts "#{item} tacos!"
end 

tacos.each do |item|
    puts item
end