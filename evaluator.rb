module Evaluator

  def evaluate(question, player)
    number_a = question.number_a
    number_b = question.number_b
    sum = question.sum
    player_number = player.player_number

    puts "Player #{player_number}: What is #{number_a} + #{number_b} ?"
    # Get player input
    player_response = gets.chomp.to_i
    
    if is_correct?(sum, player_response) 
      puts "*~*~ Correct! ~*~*"
    else
      puts "XX-- Wrong, answer was #{sum} --XX"
      player.deduct_life
    end
  end

  private

  def is_correct?(expected, actual)
    expected == actual
  end

end