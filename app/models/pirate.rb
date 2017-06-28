class Pirate
  attr_accessor :name, :weight, :height, :ships

  @@all = []

  def initialize(args)
    @name = args[:name]
    @weight = args[:weight]
    @height = args[:height]
    @@all << self
    @ships = []
    self.new_ships(args[:ships])
  end

  def self.all
    @@all
  end

  def new_ships(args)
    args.each do |arg|
      @ships << Ship.new(arg)
    end
  end

end
