# make program that lets people make a collection of their favorite games
# let them give each game a review score and the year it came out 

# collection should be hash 
games_collection = {}

# make a method to add games to the games_collection 

def add_game(collection, game)
  collection[game] = {}
end

def add_review(collection, game, score)
  collection[game][:review] = score 
end

def add_release(collection, game, year)
  collection[game][:year] = year 
end 

# TEST CODE 
games = ["Kingdom Hearts", "Horizon", "Persona 5"]
games.each do |game|
  add_game(games_collection, game)
  add_review(games_collection, game, 10)
  add_release(games_collection, game, 2000)
end
puts games_collection



