require 'pry'

class Card
  attr_reader :value, :suit
  attr_accessor :type

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def card_type?
    # binding.pry
    if /[JQK]/.match(@value)
      @type = 'face'
    elsif /A/.match(@value)
      @type = 'ace'
    else
      @type = 'number'
    end
    # binding.pry
  end
end

# card = Card.new('A', '♠')
# card.card_type?
