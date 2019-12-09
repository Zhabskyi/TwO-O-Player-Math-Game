require './question'
require './player'


class Game
  # @@turn = 1

  def self.score_check(p1, p2)
    if p1.score_show.to_i == 0 && p2.score_show.to_i == 0
      puts "It's a draw. Have to start game again"
    elsif p2.score_show.to_i == 0
      puts "Player #{p1.name} wins with a score of #{p1.score_show}/3"
    elsif p1.score_show.to_i == 0
      puts "Player #{p2.name} wins with a score of #{p2.score_show}/3"
    end
  end

  def self.answers (answer, q, p1, p2)
    if answer.to_i == q.right_answer.to_i
      puts "Yes! You are correct."
      puts "Player #{p1.name}: #{p1.score_show}/3 vs  Player #{p2.name}: #{p2.score_show}/3"
      puts "----- NEW TURN -----"
    else
      @@turn == 1 ?  p1.score_update : p2.score_update
      puts "Seriosly? No!"
      puts "Player #{p1.name}: #{p1.score_show}/3 vs  Player #{p2.name}: #{p2.score_show}/3"
      puts "----- NEW TURN -----"
    end
  end

  p1 = Player.new('1')
  p2 = Player.new('2')

  while p1.score_show.to_i != 0 && p2.score_show.to_i != 0
    @@turn = 1
    q = Question.new

    puts "Player #{p1.name}: #{q.ask}"
    answer = gets.chomp
    self.answers(answer, q, p1, p2)
    #Another player turn

    @@turn = 2
    q = Question.new
    puts "Player #{p2.name}: #{q.ask}"
    answer = gets.chomp
    self.answers(answer, q, p1, p2) 
    
    #Check the score
    self.score_check(p1, p2)

  end

end

game = Game.new
