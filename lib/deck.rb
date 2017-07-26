require 'pry'
require_relative 'card'

SUITS = %w[♠ ♥ ♦ ♣]
VALUES = %w[2 3 4 5 6 7 8 9 10 J Q K A]
# binding.pry
class Deck
  attr_accessor :collection

  def initialize
    @collection = []
    SUITS.each do |suit|
      VALUES.each do |value|
        @collection << Card.new(value, suit)
      end
    end
    @collection.shuffle!
    # binding.pry
  end
end

# deck = Deck.new
# binding.pry
