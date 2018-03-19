require './game'


class Sequence

  def random_sequence
    computer = Array.new (4)
    color_sample = ["g", "b", "y", "r"]
    computer.map do
      color_sample.sample
    end.join
  end
end

class Instruction

  puts "Welcome to mastermind"
  puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit ?"
  #answer = random_sequence
  # def mastermind_game
  user_input = ""
  until user_input == "q"
    user_input = gets.chomp
    if user_input == "p"
      puts "I have generated a beginner sequence with four elements made up of: (r)ed, (g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game."
      # game = Game.new
      # game.start
      GamePlayer.new.play


      break

    else user_input == "i"
      puts "Try to find a sequence of four elements made up of red, blue, yellow or green. One color can be use as many times as you want. After each attempt you will know how many correct colors you have and how many in the correct position. "
    end
  end
end
