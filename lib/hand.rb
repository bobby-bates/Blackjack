require 'pry'
require_relative 'card'

class Hand
  attr_reader :who_is
  attr_accessor :holding, :score

  def initialize(who_is)
    @who_is = who_is
    @holding = []
    @score = 0
  end

  def score

  end
end

# card1 = Card.new('A', '♠')
# card2 = Card.new('8', '♥')
# hand = Hand.new
# binding.pry
# hand.holding << card1 << card2
#
# binding.pry
