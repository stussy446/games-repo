class RPG
  attr_reader :game_name, :main_character


  def initialize(game_name, main_character)
    @game_name = game_name
    @main_character = main_character
  end 

  def choose_weapon(weapon)
    puts "You chose #{weapon}"
    weapon
  end

  def fight(weapon, enemy)
   "Got the #{enemy} with my #{weapon}!"
  end


end

# TEST CODE 

persona = RPG.new("Persona 5", "Joker")
puts persona.game_name
puts persona.main_character
puts persona.fight(persona.choose_weapon("jack frost"), "shadows")