# Question 1a
p "Enter your favorite food:"
foods = []

5.times do
  p "Enter a food:"
  input = gets.chomp
  foods << input
end

p foods

# Question 1b
count = 1
foods.each do |food|
  puts count.to_s + ". I love " + food
  count += 1
end

# Question 2
count = 0

while count <= 10
  p count
  count += 1
end

# Question 2d
result = false
unless result
  puts "HELLO!"
end 

# Quesion 2e
recipes = 0
languages = 0
can_make_crepes = false
can_speak_french = false

puts "Sam, how many recipes can you cook?"
recipes = gets.chomp.to_i

puts "Sally, how many languages can you speak?"
languages = gets.chomp.to_i

if recipes > 10 && languages > 5
  puts "They should date."
end

puts "Sam, can you make crepes?"
can_make_crepes = gets.chomp

puts "Sally, can you speak french?"
can_speak_french = gets.chomp


if can_make_crepes && can_speak_french
  puts "They should marry."
end

# Question 3 + 5
def is_email_valid?(email)
  if email.include?(".com") && email.include?("@")
    return true 
  end
end


accounts = []

2.times do
  person = {}
  valid = false
  puts "Enter your first name:"
  person[:first_name] = gets.chomp.capitalize
  puts "Enter last name:"
  person[:last_name] = gets.chomp.capitalize
  person[:acct] = Random.rand(1000000000..9999999999)
  accounts << person

  until valid == true
    puts "Enter email:"
    email = gets.chomp
    if is_email_valid?(email)
      person[:email] = email
      valid = true
    else
      puts "Invalid email, please try again."
      valid = false
    end
  end
end

p accounts

bank_collection.each do |hash|
  hash.each do |key, value|
    p "#{k.upcase}: #{v}"
  end
end

puts "Enter your account number to recieve your information:"
account_number = gets.chomp.to_i

accounts.each do |hash|
  hash.each do |key, value|
    if hash.has_value?(account_number)
      p "#{key.upcase}: #{value}"
    else
      p "user not found."
      break
    end
  end
end

# Question 4
puts "How many students do you have?"
student_count = gets.chomp.to_i

students = []
count = 1

student_count.times do
  puts "Enter the " + count.to_s + " students name:"
  name = gets.chomp
  count += 1
  students << name
end

p students
group_array = students.each_slice(2).to_a

group_array.each do |a, b|
  if students.count%2 == 0
    puts "Group: #{a} and #{b}"
  end
end



# ----------------------------------------

# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card

  attr_reader :question, :answer

  def initialize(card_content)
    @question = card_content[:question]
    @answer = card_content[:answer]
  end
end

class Deck

  attr_reader :card_array
  attr_writer :card_array

  def initialize(trivia_data)
    @card_array = []
    trivia_data.each do |question, answer|
      @card_array << Card.new(question: question, answer: answer)
    end
  end

  def remaining_cards
    card_array.length
  end

  def draw_card
    card = card_array[0]
    card_array.delete_at(0)
    card
  end

end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

play_game = true

while play_game != false

  deck = Deck.new(trivia_data) # deck is an instance of the Deck class

  multiple_choice = ["Pizza", "Champagne", "Robin", "State", "False", "Dough", "Rasin", "Blue"]

  while deck.remaining_cards > 0
    score = 1
    card = deck.draw_card # card is an instance of the Card class
    puts card.question
    puts "#{multiple_choice[rand(0...multiple_choice.count)]}, #{card.answer}, #{multiple_choice[rand(0...multiple_choice.count)]}"
    user_answer = gets.chomp
    if user_answer.downcase == card.answer.downcase
      trivia_data.delete(card.question)
      score += 1
      puts "Correct!"
    else
      puts "Incorrect!"
      1.times do
        if user_answer.downcase != card.answer.downcase
          puts "Please try again."
          user_answer = gets.chomp
            if user_answer.downcase == card.answer.downcase
              puts "Correct!"
            else
            puts "Incorrect!"
            end
        end
      end
    end
  end
  puts "You got a score of #{score} out of 3!"

  if score != 3
    puts "Would you like to retry the questions you got wrong?"
    puts "Enter yes if so OR enter no if you'd rather end the game."
    user_input = gets.chomp.downcase
    if user_input == "yes" || user_input == "y"
      play_game = true
    else user_input == "no" || user_input == "n"
      play_game = false
    end
  else user_input == "no" || user_input == "n"
    play_game = false
  end
end
