
class GamePlayer

  attr_accessor :color, :index

  def initialize
    @color = "g", "b", "r", "y"
  end

  def turn
    @last_guess = guess
    @turn += 1
    match(guess)
  end

  def random_sequence
    computer = Array.new (4)
    color_sample = ["g", "b", "y", "r"]
    computer.map do
      color_sample.sample
    end.join
  end

  def match
    color = ["g", "b", "r", "y"]
    index = [1, 2, 3, 4]
    guess = Array.new (4)
    exact_match = 0
    near_match = 0
    guess.each_with_index do |color|
      if @computer.index(color) ==
        exact_match += 1
      else @computer.include?(color)
        near_match += 1
      end
    end
  end


  def play
    user_input = ""
    loop do
      puts "Make a guess"
      game = GamePlayer.new.match
      user_input = gets.chomp.downcase
      #   If it’s 'q' or 'quit' then exit the game !!
      if  user_input == "q" || user_input == "quit"
        break
        #   If it’s 'c' or 'cheat' then print out the current secret code
      elsif user_input == "cheat"
        Sequence.new.random_sequence
        puts "You cheat #{random_sequence}!!!!"
        #   If it’s fewer than four letters, tell them it’s too short
      elsif user_input.length < 4
        puts "It is too short !!"
        #   If it’s longer than four letters, tell them it’s too long
      elsif user_input.length > 4
        puts "It is too long"
        #   If they guess the secret sequence, enter the end game flow below
      elsif user_input == "random_sequence"
        # Sequence.new.random_sequence
        puts "You win"
        break
      end
    end
  end

end

#   Otherwise give them feedback on the guess like this:
#   'RRGB' has 3 of the correct elements with 2 in the correct positions
#   You've taken 1 guess
