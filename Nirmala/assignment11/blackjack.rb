class Blackjack
def initialize
@deck = [
	2,3,4,5,6,7,8,9,10,10,10,10,11,
	2,3,4,5,6,7,8,9,10,10,10,10,11,
	2,3,4,5,6,7,8,9,10,10,10,10,11,
	2,3,4,5,6,7,8,9,10,10,10,10,11,
	2,3,4,5,6,7,8,9,10,10,10,10,11,
	2,3,4,5,6,7,8,9,10,10,10,10,11,
	2,3,4,5,6,7,8,9,10,10,10,10,11,
	2,3,4,5,6,7,8,9,10,10,10,10,11]

@player_hand = get_starting_hand
@dealer_hand = get_starting_hand
run_game
end
def print_game_state
puts "player hand: #{@player_hand} value: #{get_hand_value(@player_hand)}"
puts "dealer hand: #{@dealer_hand} value: #{get_hand_value(@dealer_hand)}"
end 

def run_game
	user_input = false
	while user_input !='stand'
		puts "hit or stand?"
		 print_game_state
		if get_hand_value(@player_hand)>21
			puts "you BUST! dealer wins."
			return
		end
		
		user_input = gets.chomp
		if user_input =='hit'
			hit(@player_hand)
			elsif user_input =='stand'
			puts "player stands"
		else
			puts "sorry, I didn't understand that"
		end 

	end
	dealer_decisions
    calculate_game_state
end
def dealer_decisions
	
	while get_hand_value(@dealer_hand)<17
		puts "dealer hits!"
		hit(@dealer_hand)
		 print_game_state
		
		end
	end 
def  calculate_game_state
	 print_game_state
	 if get_hand_value(@player_hand)>21
	 	puts "SORRY, YOU BUST! YOU LOSE"
	elsif get_hand_value(@dealer_hand)>21
		puts "dealer busts! yo WIN!"
	elsif get_hand_value(@player_hand) == get_hand_value(@dealer_hand)
		puts " a TIE! you get your money back!"
    elsif get_hand_value(@player_hand)> get_hand_value(@dealer_hand)
        puts "you WIN.. be sure  to keep playing until the house wins;-)"
    elsif get_hand_value(@player_hand)< get_hand_value(@dealer_hand)
	    puts "HOUSE WINS . SORRY"
	 else 
	 	puts "something went wrong"
	 end
	end
#def end_game
	#@still_playing = false

def hit(hand)
	hand.push(get_random_card)
end

def get_starting_hand
	[get_random_card,get_random_card]
end
def get_hand_value(hand)
	sum=0
	hand.each do |card|
		sum = sum+ card
	end
	sum
end
def get_random_card
	@deck[rand(@deck.length)]
end
end
Blackjack.new
#name = gets.chomp
#puts "Hello #{name}, nice to meet you!"
