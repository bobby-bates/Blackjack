require_relative 'card'
require_relative 'deck'
require_relative 'hand'

class Blackjack
  attr_reader :player, :dealer
  attr_accessor :deck
  def initialize
    @set_up_game = set_up_game
    @play_game = play_game
  end

  def set_up_game
    puts "Welcome to Blackjack!\n\n"
    @deck = Deck.new
    @player = Hand.new('Player')
    @dealer = Hand.new('Dealer')
    @deck.initial_hand(player).each do |card|
      player.cards << card
    end
  end

  def play_game
    # TAKE PLAYER TURN
    player.calculate_hand
    is_playing = true
    while is_playing == true
      print 'Hit or stand (H/S): '
      input = gets.chomp.downcase

      if input == 'h'
        player.cards << deck.deal(player)
        player.calculate_hand
        if player.score == 21
          puts 'BLACKJACK! You win!'
          return
        elsif player.score > 21
          puts 'BUST! Dealer wins!'
          return
        end
      elsif input == 's'
        is_playing = false
      else
        puts "\nInvalid input!"
        @play_game
      end
    end

    # TAKE DEALER TURN
    @deck.initial_hand(dealer).each do |card|
      dealer.cards << card
    end
    dealer.calculate_hand

    while dealer.score < 17
      dealer.cards << deck.deal(dealer)
      dealer.calculate_hand
    end

    puts "Dealer stands.\n\n" if dealer.score <= 21

    # SEE WHO WINS
    if player.score > dealer.score
      puts 'You win!'
    elsif dealer.score > 21
      puts 'BUST! You win!'
    elsif dealer.score > player.score
      puts 'Dealer wins!'
    else
      puts 'TIE!'
    end
  end
end

Blackjack.new
