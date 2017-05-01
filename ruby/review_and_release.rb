# make program that lets people make a collection of their favorite games
# let them give each game a review score and the year it came out 

# collection should be hash 
games_collection = {}

# make a method to add games to the games_collection 

def add_game(collection, game)
  if collection.keys.length == 5 
    false
  else
    collection[game] = {}
    true
  end
end

def add_review(collection, game, score)
  collection[game][:review] = score 
end

def add_release(collection, game, year)
  collection[game][:year] = year 
end 

# TEST CODE 

# UI 

# Let user choose a game to insert into collection 
# Let them add games until 'done' or until there are 5 game 
count = 1
until count == 5 
  puts "What game will we be adding today?"
  game_addition = gets.chomp
  break if game_addition == 'done' 
  add_game(games_collection, game_addition)
  count +=1
  puts games_collection 
end

puts games_collection





