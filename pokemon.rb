require_relative 'type_bonification'

class Pokemon
  attr_reader :physical_attack, :physical_defense,
              :speed, :type

  attr_accessor :current_hp

  @@bonificator = TypeBonification.new

  def initialize(name, type, hp, physical_attack, physical_defense, speed)
    @name = name
    @type = type
    @max_hp = hp
    @current_hp = hp
    @physical_attack = physical_attack
    @physical_defense = physical_defense
    @speed = speed
  end

  def healthier_than?(other)
    @current_hp > other.current_hp
  end

  def faster_than?(other)
    @speed > other.speed
  end

  def stronger_than?(other)
    @physical_attack > other.physical_attack
  end

  def attack(other)
    bonification = @@bonificator.damage_bonification(@type, other.type)
    raw_damage = @physical_attack - other.physical_defense * 0.5
    damage = (raw_damage * bonification).to_i

    # Bonus por vida restante
    if ((@current_hp % 2).zero? || (@current_hp % 5).zero?) && @current_hp < 25
      damage *= 5
    elsif @current_hp < 50 || other.healthier_than?(self)
      damage *= 3
    else
      damage += 1
    end

    # Bonus por desventaja
    if bonification <= 1 || (other.faster_than?(self) && @speed > 5)
      damage *= 1.5
    end

    [1, damage].max
  end

  def alive?
    @current_hp.positive?
  end

  def to_s
    @name
  end
end
