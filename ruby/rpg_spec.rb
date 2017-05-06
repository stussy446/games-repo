require_relative "rpg"

describe RPG do 
  let(:kingdom_hearts) {RPG.new("Kingdom Hearts", "Sora")}
  
  it "Gives the user the game name" do
    expect(kingdom_hearts.game_name).to eq "Kingdom Hearts"
  end 
  it "Gives the user the main character name" do 
    expect(kingdom_hearts.main_character).to eq "Sora"
  end 
  it "Lets the user choose the weapon to use" do
    expect(kingdom_hearts.choose_weapon("Keyblade")).to eq "Keyblade"
  end 

  it "Lets the user fight an enemy" do
    expect(kingdom_hearts.fight("keyblade", "heartless")).to eq "Got the heartless with my keyblade!"
  end 

end 