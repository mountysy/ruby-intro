# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 5-loops.rb

# EXERCISE
# Build a deck of cards. Given the following arrays of card data,
# use a loop to write out the cards to the screen.
# clubs = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
# diamonds = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
# hearts = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
# spades = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]

for clubsp in clubs
    puts "#{clubsp} of club"
end

for diamondsp in diamonds
    puts "#{diamondsp} of diamonds"
end

for heartsp in hearts
    puts "#{heartsp} of hearts"
end

for spadesp in spades
    puts "#{spadesp} of spades"
end

# Sample output:
# 2 of Clubs
# 3 of Clubs
# 4 of Clubs
# ...etc
# Queen of Spades
# King of Spades
# Ace of Spades

# CHALLENGE #1
# The arrays are identical for each suit and can be simplified by using
# a ranks array as seen below. Try to complete the exercise again by
# combining these arrays.

ranks = [2, 3, 4, 5, 6, 7, 8, 9, 10, "Jack", "Queen", "King", "Ace"]
suits = ["Clubs", "Diamonds", "Hearts", "Spades"]

for suit in suits
    for rank in ranks
    puts "#{rank} of #{suit}"
    end
end

# CHALLENGE #2
# Deal a poker hand. Shuffle the deck and "deal" (i.e. display) a 5 card hand (i.e. 5 cards from the deck).
# You will want to look at the documentation for Arrays: https://ruby-doc.org/core-2.7.0/Array.html

#possible answer 1 (problem is that there might be same cards in the 5 cards drawn)

index = 0

loop do
    if index == 5
        break 
    end

    rank_random = ranks.sample
    suit_random = suits.sample
    puts "#{rank_random} of #{suit_random}"

    index = index + 1
end

# correct answer

deck = []
for suit in suits
    for rank in ranks
    card = "#{rank} of #{suit}"
    deck = deck.push(card)
    end
end

puts deck
puts nil 

shuffled_deck = deck.shuffle
puts shuffled_deck[0,5]