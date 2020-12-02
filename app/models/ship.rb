class Ship
  attr_accessor :name, :type, :booty
  @@all = []

  def initialize(attr_hash)
    attr_hash.each do |key, value|
      self.class.attr_accessor key.to_sym
      self.send(("#{key}="), value)
    end
    save
  end  

  def self.clear
    @@all = []
  end  

  def save
    @@all << self
  end  

  def self.all
    @@all
  end  

end