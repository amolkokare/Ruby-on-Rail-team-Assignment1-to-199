class Card
  attr_accessor :value, :suit
  def initialize(value, suit)
    @value = value
    @suit = suit
  end
end

class Hand
  def initialize(cards)
    @cards = cards
  end

  def rank_hand

  end

  def is_a_flush?
    suits = @cards.select{|card| card.suit }
    return false if suits.uniq.length > 1
    true
  end

  def is_a_straight?
    card_values = @cards.select{|card| card.value }
    [5,4,3,2,9]
    card_values.sort!
    card_values.each_cons(2).all? {|first, second| second = first + 1 }
  end
  
  def finish_draw(cards_to_discard, deck)
    cards_to_discard.each do |card|
      @cards.delete_at(card)
    end
    deck.shuffle!
    puts "old cards: #{@cards}"
    new_cards = deck.take(cards_to_discard.count)
    puts "new cards: #{new_cards}"
    @cards = @cards + new_cards
  end

  def show_hand
    @cards.each do |card|
      puts "#{card.value} of #{card.suit}"
    end
  end

  def show_hand_for_draw
    puts "enter the number below to give up that card"
    @cards.each_with_index do |card, index|
      puts "#{index}) #{card.value} of #{card.suit}"
    end
    puts
  end
end

class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    [2,3,4,5,6,7,8,9,10,'Jack', 'Queen', 'King', 'Ace'].each do |card_value|
      ['Hearts', 'Spades', 'Clubs', 'Diamonds'].each do |suit|
        @cards.push(Card.new(card_value, suit))
      end
    @cards.shuffle!
    end
  end
end

class Poker
	def initialize
    @game_over = false
    @deck = Deck.new.cards
    @cards_to_discard = []
    @player_hand = Hand.new(@deck.take(5))
    @deck.shuffle!
    @dealer_hand = Hand.new(@deck.take(5))
    @player_hand.show_hand
    puts "stand or draw?"
    user_input = gets.chomp
    draw if user_input == 'draw'
    #draw hold score
	end

  def validate_draw_input(input)
    return puts 'Sorry, I didn\'t understand that.' unless input.is_a?(Integer)
    return puts 'you can\'t discard the same card twice!'if @cards_to_discard.include?(input)
    @cards_to_discard.push(discard_card.to_i)
  end

  def draw
    puts "How many cards do you want to give up?"
    number_of_new_cards = gets.chomp.to_i
    while @cards_to_discard.count < number_of_new_cards
      @player_hand.show_hand_for_draw
      discard_card = gets.chomp
      validate_draw_input(discard_card)
      puts
    end
    @player_hand.finish_draw(cards_to_discard, @deck)
    @player_hand.show_hand
  end
end
 
Poker.new
describe 'hand' do
    before(:all) do
      puts 'hello'
      # @deck = Deck.new.cards 
      @player_hand = Hand.new([Card.new(5, 'Spades'),
                              Card.new(2, 'Spades'),
                              Card.new(9, 'Spades'),
                              Card.new(10, 'Spades'),
                              Card.new('Queen', 'Spades')
                              ])

      # @book = Book.new(:title => "RSpec Intro", :price => 20)
      # @customer = Customer.new
      # @order = Order.new(@customer, @book)

      # @order.submit
    end

   describe "#is_a_flush" do
     it "returns true for a flush" do
      puts 'got here'
      puts @player_hand.inspect
       # expect(@customer.orders).to include(@order)
       # expect(@customer.ordered_books).to include(@book)
     end
   end
  end