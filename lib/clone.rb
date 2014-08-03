class Clone
  @@clones = []
  attr_accessor :health, :name, :friend
  def initialize (attributes)
    @health = 10
    @name = attributes[:name]
    @friend = attributes[:friend]
    @@clones << self
  end
  def Clone.clones
    @@clones
  end
  def Clone.clearClones
    @@clones = []
  end
end

# It seems weird to me that I can inherit methods but I can't
# replace "@@clones" w/ "@@brads" or whatever without re-writing the methods.

class Brad < Clone
  @@brads = []
  def initialize (attributes)
    super
    @@brads << self
    end
  def Brad.brads
    @@brads
  end
  def Brad.clearBrads
    @@brads = []
  end
end

class Angelena < Clone
  @@angelenas = []
  def initialize (attributes)
    super
    @@angelenas << self
  end
  def Angelena.angelenas
    @@angelenas
  end
  def Angelena.clearAngelenas
    @@angelenas = []
  end
end

class Scarlet < Clone
  @@scarlets = []
  def initialize (attributes)
    super
    @@scarlets << self
  end
  def Scarlet.scarlets
    @@scarlets
  end
  def Scarlet.clearScarlets
    @@scarlets = []
  end
end

class Bill < Clone
  @@bills = []
  def initialize (attributes)
    super
    @@bills << self
  end
  def Bill.bills
    @@bills
  end
  def Bill.clearBills
    @@bills = []
  end
end
