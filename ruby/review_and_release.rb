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

# UI 

# Let user choose a game to insert into collection 
# Let them add games until 'done' or until there are 5 game 

count = 0
until count == 5 
  puts "What game will we be adding today?"
  game_addition = gets.chomp
  break if game_addition == 'done' 
  add_game(games_collection, game_addition)
  count +=1
  puts games_collection 
end

# Let user add a review and a release year to the games 
# let them keep adding until length of collection 

count = 0 
until count == games_collection.length
  puts "If there is a game you would like to review and add a release date for, state so now (or type 'done')"
  game_name = gets.chomp 
  break if game_name == 'done'
  games_collection.each_key do |game|
    if game == game_name 
      puts "Awesome, and what score would you give #{game}?"
      score = gets.chomp.to_i
      add_review(games_collection, game, score)
      puts "And the release year?"
      release = gets.chomp.to_i
      add_release(games_collection, game, release)
      puts games_collection
      count +=1
    end 
  end
end
puts "Thank you for sharing your game collection with us!"
puts "Your current collection is...."
games_collection.each do |game, info|
  puts "#{game} --- Review is #{info[:review]}, Release was in #{info[:year]}"
end





