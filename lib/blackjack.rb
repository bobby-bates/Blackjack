require 'pry'
require_relative 'card'
require_relative 'deck'
require_relative 'hand'

player = Hand.new('Player')
dealer = Hand.new('Dealer')

# binding.pry
def deal(person)
  deck = Deck.new
  # binding.pry

  2.times do |i|
    # binding.pry
    person.holding << deck.collection.pop
    puts "#{person.who_is} was dealt #{person.holding[i].suit}#{person.holding[i].value}"
    # binding.pry
  end
  # binding.pry
end


# binding.pry

def prompt(person)
  input = nil
  until input =~ /[hs]/
    print 'Hit or stand (H/S): '
    input = gets.chomp.downcase
    if input != 'h' && input != 's'
      puts 'Invalid input!'
    else
      break
    end
  end
  # score(person)
  if input == 'h'
    score(person)
  elsif input == 's'
    score(person)
  end
end

def score(person)
  # binding.pry
  puts 'woo!'
end

# All the calls:

puts 'Welcome to Blackjack!'

deal(player)
# deal(dealer)

prompt(player) if player.holding.count == 2

score(player)
# binding.pry
