require './player'
require './question'

# Start game
def start_game
  puts "It takes ❷ to play this 🎮"
  do_math 
end

# Creates instances of players

@player1 = Player.new
@player2 = Player.new

@turn = 0

def do_math
  @turn +=1
  if @turn.odd? && @player1.is_alive? && @player2.is_alive?
    if @turn != 1
      puts "--- 🆕 TURN ---"
    end
    question = Question.new # instance of new question
    puts "Player 1: #{question.show}"
    print "> " # new line
    answer = gets.chomp.to_i
    if answer == question.answer
      puts "Player 1: 👊 Yas!You are 💯 % right!"
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    else 
      @player1.lives -= 1 # lose a life if mis-answer a question
      puts "Player 1: Seriously!? 👻  No!"
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
    do_math
  elsif @turn.even? && @player1.is_alive? && @player2.is_alive?
    puts"--- 🆕 TURN ---"
    question = Question.new 
    puts "Player 2: #{question.show}"
    print "> "
    answer = gets.chomp.to_i
    if answer == question.answer
      puts "Player 2: 👊 Yas!You are 💯 % right!"
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    else 
      @player2.lives -= 1
      puts "Player 2: Seriously!? 👻  No!"
      puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
    end
    do_math
  else
    if !(@player1.is_alive?)
      puts "Player 2 is 👑  with a final score of #{@player2.lives}/3"
      puts "🔥 GAME 👀 V 🤗 R 🔥 "
      puts "👋 👋 👋 👋 👋 👋 👋 👋 👋 👋 👋 👋 "
    else
      puts "Player 1 is 👑  with a final score of #{@player1.lives}/3"
      puts "🔥 GAME 👀 V 🤗 R 🔥 "
      puts "👋 👋 👋 👋 👋 👋 👋 👋 👋 👋 👋 👋 " 
    end
  end
end

start_game


      








