require_relative 'test_helper'
require_relative "../pokemon"


describe Pokemon do
  let(:pokemon1) {Pokemon.new('Charmander', 'Fire', 20, 7, 6, 3)}
  let(:pokemon2) {Pokemon.new('Squirtle', 'Water', 49, 6, 6, 4)}
  let(:pokemon3) {Pokemon.new('Bulbasaur', 'Grass', 51, 6, 6, 5)}

  it "Test Funciona" do
    expect(pokemon1.attack(pokemon2)).to eq(15.0)
  end
  it "Test Fallido" do
    # Este test está a proposito mal para que puedan ver en consola como 
    # rspect reporta un test cuando falla
    expect(pokemon2.attack(pokemon3)).to eq(5.5) # Debe ser 4.5
  end
end