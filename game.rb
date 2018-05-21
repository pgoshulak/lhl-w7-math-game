class Game
  include Evaluator
  attr_reader :players

  def initialize
    @players = Array.new(2).fill {|index| Player.new(index + 1)}
    @current_player_index = 1
  end

  def game_loop
    # Main game loop: repeat as long as both players are alive
    while current_player_is_alive? do
      next_player
      evaluate(Question.new, @players[@current_player_index])
      print_scores
    end
    # Print the end results
    current_player = @players[@current_player_index]
    puts "Player #{current_player.player_number} loses :("
    next_player
    current_player = @players[@current_player_index]
    puts "Player #{current_player.player_number} wins with a score of #{current_player.lives}/3"
  end

  private

  # Print each player's scores to screen
  def print_scores
    puts "+--------------+"
    @players.each do |player|
      puts "| Player #{player.player_number} : #{player.lives} |"
    end
    puts "+--------------+"
  end

  # Rotate to next player
  def next_player
    @current_player_index += 1
    @current_player_index %= 2
  end

  # Check if the current player is alive
  def current_player_is_alive?
    @players[@current_player_index].is_alive?
  end
end

