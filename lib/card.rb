class Card
  attr_reader :suit, :value
  attr_accessor :type

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def to_output
    "#{value}#{suit}"
  end
end
