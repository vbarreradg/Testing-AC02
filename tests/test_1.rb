require_relative 'test_helper'
require_relative "../pokemon"


describe Pokemon do
  let(:pokemon1) {Pokemon.new('Bulbasaur', 'Grass', 51, 6, 6, 5)}

  it "Verificar nombre pokemon" do
    expect(pokemon1.to_s).to eq('Bulbasaur')
  end

  it "Verificar si está vivo un pokemon" do
    expect(pokemon1.alive?).to eq(true)
  end
  
end