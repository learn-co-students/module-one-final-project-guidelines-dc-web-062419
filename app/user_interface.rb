class UserInterface

  def self.user_homescreen(a)
      puts "Press 1 to Start Normal Game"
      puts "Press 2 to Start Timed Game"
      puts "Press 3 to see High Scores Table"
      puts "Press 4 to go Welcome Screen"
      puts "Press 5 to Quit"
      choice = gets.chomp

      case choice
      when "1"
        Question.give_user_questions(a)
        a.save
      when "2"
        # OPTIONAL game type
      when "3"
        Question.high_score_board(a)
      when "4"
        User.welcome_user
      when "5"
        puts "Have a good day!"
      else
          puts "------------------------------"
          puts "Please Select A Valid Option"
          self.user_homescreen(a)
      end
  end
end
