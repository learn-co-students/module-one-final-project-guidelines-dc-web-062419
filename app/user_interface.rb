class UserInterface

  def self.user_homescreen(user)
      puts "Enter 1 to Start Normal Game"
      puts "Enter 2 to modify User Name"
      puts "Enter 3 to delete User"
      puts "Enter 4 to see High Scores Table"
      puts "Enter 5 to go Welcome Screen"
      puts "Press 6 to Start Timed Game"
      puts "Enter 7 to Exit"
      choice = gets.chomp.downcase

      case choice
      when "1"
        Question.give_user_questions(user)
        user.save
      # when "2"
        # OPTIONAL game type
      when "2"
        puts "Please enter New User Name"
        new_name = gets.chop
        user.name = new_name
        user.save
        UserInterface.user_homescreen(user)
      when "3"
        puts "Are you sure you want to delete your user?"
        puts "You won't be able to recover your stats."
        puts "Enter 'yes' to confirm or enter any key to return to menu"
        answer = gets.chomp.downcase
        if answer == "yes"
          user.destroy
          puts "User Deleted"
        else
          self.user_homescreen(user)
        end
      when "4"
        Question.high_score_board(user)
      when "5"
        User.welcome_user
      when "6"
        TimedGame.give_user_questions(user)
      when "7"
        puts "Have a good day!"
      when "exit"
        puts "Have a good day!"
      else
          puts "------------------------------"
          puts "Please Select A Valid Option"
          self.user_homescreen(user)
      end
  end
end
