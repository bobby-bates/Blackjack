require_relative 'card'
require_relative 'deck'

class Hand
  attr_reader :cards, :name
  attr_accessor :score

  def initialize(name, cards = [])
    @name = name
    @cards = cards
    @score = 0
  end

  def calculate_hand
    @score = @cards.inject(0) { |sum, card|
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

    puts "#{@name} Score: #{@score}\n\n"
  end
end
