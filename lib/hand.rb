require_relative 'card'
require_relative 'deck'

class Hand
  attr_reader :cards
  attr_accessor :holding, :score

  def initialize(cards = initial_hand(player))
    @cards = cards
    @score = 0
  end

  def calculate_hand
    # binding.pry
    @score = @cards.inject(0) { |sum, card|
      # binding.pry
      if card.value == 'J' || card.value == 'Q' || card.value == 'K'
        sum += 10
      elsif card.value == 'A'
        sum += 11
        sum -= 10 if sum > 21
        sum
      else
        sum += card.value.to_i
      end
    }
    # binding.pry

    puts "\nPlayer Score: #{@score}"
    # binding.pry
  end
end

# card1 = Card.new('A', '♠')
# card2 = Card.new('8', '♥')
# hand = Hand.new
# binding.pry
# hand.holding << card1 << card2
#
# binding.pry
