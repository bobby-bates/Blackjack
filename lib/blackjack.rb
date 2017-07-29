require_relative 'card'
require_relative 'deck'
require_relative 'hand'

class Blackjack
  attr_reader :set_up_game, :play_game

  def initialize(set_up_game, play_game)
    @set_up_game = set_up_game
    @play_game = play_game
  end

  def set_up_game
    deck = Deck.new
    player = Hand.new('Player')
    dealer = Hand.new('Dealer')
  end

  def play_game

  end
end


def prompt(person)
  input = nil
  until input == 'h' || input == 's'
    print 'Hit or stand (H/S): '
    input = gets.chomp.downcase
    if input != 'h' && input != 's'
      puts "\nInvalid input!"
    else
      # binding.pry
      break
    end
  end
  # binding.pry

  # person.score was running twice in the `until` loop so...
  if input == 'h' || input == 's'
    person.score
  end
end

Blackjack.new

# All the calls:

puts 'Welcome to Blackjack!'
puts
# binding.pry
deck.deal(player)
# deal(dealer)

prompt(player) if player.holding.count == 2

# score(player)
# binding.pry
