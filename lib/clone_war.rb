require './lib/clone'

class CloneWar

  attr_accessor :computer_army, :player_army
  def initialize
    @computer_army = []
    @computer_army = new_clone_army
    @player_army = []
    @player_army = new_clone_army
  end

  def new_clone_army
    @army = []
    rand(1..20).times do
      @army << Brad.new({:name => 'Brad'})
    end
    rand(1..20).times do
      @army << Angelena.new({:name => 'Angelena'})
    end
    rand(1..20).times do
      @army << Scarlet.new({:name => 'Scarlet'})
    end
    rand(1..20).times do
      @army << Bill.new({:name => 'Bill'})
    end
    @army
  end

  def number_of_clones(army,clone_type)
    number_of = 0
    army.each do |clone|
      if (clone.is_a? clone_type)
        number_of += 1
      end
    end
    number_of
  end

  # def kill_clones(army,clone_type,num_to_kill)
  #   army.each_with_index do |clone,index|
  #     if (clone.is_a? clone_type) && (num_to_kill > 0)
  #       num_to_kill -= 1
  #       army.splice(index,1)
  #     end
  #   end
  # end
  # def clone_battle(attacker,defender,a_clone_type,d_clone_type)
  #   attackers_roll = 0
  #   defenders_roll = 0
  #   number_of_clones(attacker,a_clone_type).times do
  #     attackers_roll += rand(0..5)
  #   end
  #   number_of_clones(defender,d_clone_type).times do
  #     defenders_roll += rand(1..6)
  #   end
  #   if attackers_roll > defenders_roll
  #     kill_clones(defender,d_clone_type,attackers_roll-defenders_roll)
  #   elsif defenders_roll > attackers_roll
  #     kill_clones(attacker,a_clone_type,defenders_roll-attackers_roll)
  #   end
  # end
end
