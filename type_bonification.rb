class TypeBonification
  def initialize
    @bonification_matrix = [
      [1, 0.5, 2],
      [2, 1, 0.5],
      [0.5, 2, 1]
    ]
    @type_positions = {
      'Fire': 0,
      'Water': 1,
      'Grass': 2
    }
  end

  def damage_bonification(attacker_type, defender_type)
    attacker_position = @type_positions[attacker_type.to_sym]
    defender_position = @type_positions[defender_type.to_sym]
    @bonification_matrix[attacker_position][defender_position]
  end
end
