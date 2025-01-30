# To run this code, be sure your current working directory
# is the same as where this file is located and then run:
# ruby 4-hashes.rb

# Hashes are lists of *key-value pairs*

ben = {"name" => "Ben", "location"=> "Chicago", "status" => "teaching at Kellogg" }
sam = {:name => "Sam", :location => "DC", :status => "teaching at Kellogg" }
tom = {name: "Tom", location: "NYC", status: "teaching at Kellogg"} 

puts ben
puts sam
puts tom

# Accessing data from the hash

name = sam [:name]
puts name

location = tom[:location]
puts location

# More Complex Hashes

# my_profile = {
#     "name"=>"Ben",
#     "location" => {"city"=>"Chicago", "state" => "IL"},
#     "status"=> "teaching at Kellogg"
# }

# p my_profile
# puts my_profile ["location"]["city"]
# puts my_profile ["location"]["state"]

# my_profile["name"] = "Nathan"
# puts my_profile

