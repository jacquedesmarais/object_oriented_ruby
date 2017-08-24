# p "Enter your favorite food:"
# foods = []

# 5.times do
#   p "Enter a food:"
#   input = gets.chomp
#   foods << input
# end

# p foods

# count = 1
# foods.each do |food|
#   puts count.to_s + ". I love " + food
#   count += 1
# end

# count = 0

# while count <= 10
#   p count
#   count += 1
# end

# result = false
# unless result
#   puts "HELLO!"
# end 

# recipes = 0
# languages = 0
# can_make_crepes = false
# can_speak_french = false

# puts "Sam, how many recipes can you cook?"
# recipes = gets.chomp.to_i

# puts "Sally, how many languages can you speak?"
# languages = gets.chomp.to_i

# if recipes > 10 && languages > 5
#   puts "They should date."
# end

# if can_make_crepes && can_speak_french
#   puts "They should marry."
# end
# ----------------------------------------

# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card < Deck

  def initialize(input_options)
    @question = input_options[:question]
    @answer = input_options[:answer]
  end

  def answer

  end

end

class Deck
  attr_reader :remaining_cards
  attr_writer :remaining_cards

  def initialize(trivia_data)
    super
    @trivia_data = trivia_data
  end

  def draw_card
    input_options = trivia_data
    card = Card.new(@question)

  end

  def remaining_cards

  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end
