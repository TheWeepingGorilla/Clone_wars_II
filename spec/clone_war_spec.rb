require 'rspec'
require 'pry'
require 'clone'
require 'clone_war'

describe 'Clone' do
  it "Instantiates a clone from the Clone class" do
    test_clone = Clone.new({:name => 'Generic One'})
    expect(test_clone).to be_an_instance_of Clone
  end
  it "allows attributes to be accessed" do
    test_clone = Clone.new({:name => 'Generic One'})
    expect(test_clone.health).to eq 10
    expect(test_clone.name).to eq "Generic One"
  end
  it "saves a copy of each clone made" do
    Clone.clearClones
    test_clone = Clone.new({:name => 'Generic One'})
    expect(Clone.clones[-1].name).to eq "Generic One"
  end
  it "saves a copy of clones made in inherited methods" do
    Clone.clearClones
    brad1 = Brad.new({:name => 'Brad Zero'})
    expect(Clone.clones[-1].name).to eq "Brad Zero"
  end
end

describe 'Brad' do
it "Creates a Brad that inherits from the Clone class" do
    Brad.clearBrads
    brad1 = Brad.new({:name => 'Brad Zero'})
    expect(brad1.health).to eq 10
  end
  it "save a copy of each brad object to the class array" do
    Brad.clearBrads
    brad1 = Brad.new({:name => 'Brad Zero'})
    brad2 = Brad.new({:name => 'Brad One'})
    expect(Brad.brads[0].name).to eq "Brad Zero"
    expect(Brad.brads[1].name).to eq "Brad One"
    expect(Brad.brads[1].friend).to eq nil
  end
end

describe 'Angelena' do
  it "Creates an Angelena that inherits from the Clone class" do
    Angelena.clearAngelenas
    angelena1 = Angelena.new({:name => 'Angelena Zero'})
    expect(angelena1.health).to eq 10
  end
  it "save a copy of each angelena object to the class array" do
    Angelena.clearAngelenas
    angelena1 = Angelena.new({:name => 'Angelena Zero'})
    angelena2 = Angelena.new({:name => 'Angelena One'})
    expect(Angelena.angelenas[0].name).to eq "Angelena Zero"
    expect(Angelena.angelenas[1].name).to eq "Angelena One"
  end
end

describe 'Scarlet' do
  it "Creates a Scarlet that inherits from the Clone class" do
    Scarlet.clearScarlets
    scarlet1 = Scarlet.new({:name => 'Scarlet Zero'})
    expect(scarlet1.health).to eq 10
  end
  it "save a copy of each scarlet object to the class array" do
    Scarlet.clearScarlets
    scarlet1 = Scarlet.new({:name => 'Scarlet Zero'})
    scarlet2 = Scarlet.new({:name => 'Scarlet One'})
    expect(Scarlet.scarlets[0].name).to eq "Scarlet Zero"
    expect(Scarlet.scarlets[1].name).to eq "Scarlet One"
  end
end

describe 'Bill' do
  it "Creates a Bill that inherits from the Clone class" do
    Bill.clearBills
    bill1 = Bill.new({:name => 'Bill Zero'})
    expect(bill1.health).to eq 10
  end
  it "save a copy of each bill object to the class array" do
    Bill.clearBills
    bill0 = Bill.new({:name => 'Bill Zero'})
    bill1 = Bill.new({:name => 'Bill One'})
    expect(Bill.bills[0].name).to eq "Bill Zero"
    expect(Bill.bills[1].name).to eq "Bill One"
  end
end

describe 'CloneWar' do
  it "Creates a clone war from the CloneWar class" do
    test_war = CloneWar.new
    expect(test_war).to be_an_instance_of CloneWar
  end
  it "Creates a new clone army" do
    test_war = CloneWar.new
    expect(test_war.computer_army[-1]).to be_an_instance_of Bill
    expect(test_war.player_army[-1]).to be_an_instance_of Bill
  end
  it "Returns how many clones are Brads" do
    test_war = CloneWar.new
    expect(test_war.number_of_clones(test_war.player_army,Brad)).to be_between(1,20)
    expect(test_war.number_of_clones(test_war.computer_army,Brad)).to be_between(1,20)
  end
  it "Returns how many clones are Angelenas" do
    test_war = CloneWar.new
    expect(test_war.number_of_clones(test_war.player_army,Angelena)).to be_between(1,20)
    expect(test_war.number_of_clones(test_war.computer_army,Angelena)).to be_between(1,20)
  end
  it "Returns how many clones are Scarlets" do
    test_war = CloneWar.new
    expect(test_war.number_of_clones(test_war.player_army,Scarlet)).to be_between(1,20)
    expect(test_war.number_of_clones(test_war.computer_army,Scarlet)).to be_between(1,20)
  end
  it "Returns how many clones are Bills" do
    test_war = CloneWar.new
    expect(test_war.number_of_clones(test_war.player_army,Bill)).to be_between(1,20)
    expect(test_war.number_of_clones(test_war.computer_army,Bill)).to be_between(1,20)
  end
end
