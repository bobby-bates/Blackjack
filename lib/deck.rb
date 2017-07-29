require 'pry'
require_relative 'card'

SUITS = %w[♠ ♥ ♦ ♣]
RANKS = %w[2 3 4 5 6 7 8 9 10 J Q K A]
# binding.pry
class Deck
  attr_accessor :cards

  def initialize
    @cards = build_deck # Value can equal the return of a method
    # binding.pry
  end

  def build_deck
    cards = []
    # binding.pry
    SUITS.each do |suit|
      RANKS.each do |value|
        cards << Card.new(value, suit)
      end
    end
    cards.shuffle!
  end

  def initial_hand(player)
    cards = []
    2.times do
      cards << deal(player)
    end
    cards
  end

  def deal(player)
    card = cards.pop
    puts "#{player.name} was dealt #{card.to_output}"
    card
  end
end
