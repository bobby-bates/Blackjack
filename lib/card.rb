class Card
  attr_reader :suit, :value
  attr_accessor :type

  def initialize(value, suit)
    @suit = suit
    @value = value
  end

  def card_type?
    # binding.pry
    if @value =~ /[JQK]/
      @type = 'face'
    elsif @value == 'A'
      @type = 'ace'
    else
      @type = 'number'
    end
    # binding.pry
  end
end

# card = Card.new('A', '♠')
# puts card.card_type?
