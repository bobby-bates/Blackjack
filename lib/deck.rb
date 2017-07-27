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

  def deal(person)

    # binding.pry

    2.times do |i|
      # binding.pry
      person.holding << collection.pop
      puts "#{person.who_is} was dealt #{person.holding[i].suit}#{person.holding[i].value}"
      # binding.pry
    end
    # binding.pry
    person.score
  end
end

# deck = Deck.new
# binding.pry
