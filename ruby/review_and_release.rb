# make program that lets people make a collection of their favorite games
# let them give each game a review score and the year it came out 

# collection should be hash 
games_collection = {}

# make a method to add games to the games_collection 

def add_game(collection, game)
  puts "Adding #{game} to #{collection}..."
  collection[game] = {}
end

def add_review(collection, game, score)
  puts "Adding review score of #{score} for #{game} in #{collection}..."
  collection[game][:review] = score 
end

def add_release(collection, game, year)
  puts "Adding year released to #{game} in #{collection}..."
  collection[game][:year] = year 
end 

# TEST CODE 
add_game(games_collection, "Kingdom Hearts")
add_review(games_collection, "Kingdom Hearts", 10)
add_release(games_collection, "Kingdom Hearts", 2000)
puts games_collection



