class Power
  attr_reader :name, :type
  @@powers = []

  def initialize(params)
    @name = params[:name]
    @type = params[:type]
    @@powers << self
  end

  def self.all
    @@powers
  end

  def self.clear
    @@powers.clear
  end
end
