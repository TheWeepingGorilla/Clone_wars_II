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
end
