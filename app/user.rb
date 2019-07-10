class User < ActiveRecord::Base

    has_many :user_questions
    has_many :questions, through: :user_questions
    attr_accessor


    def self.welcome_user
        puts "Welcome, Please Enter A Number From The Following Choices"
        puts ""
        puts "1. Login or Create User"
        # puts "2. Create New User"
        puts "2. Quit"
        choice = gets.chomp

        case choice
        when "1"
         choice = self.login
         UserInterface.user_homescreen(choice)
        # when "2"
        #   choice = self.login
        #   UserInterface.user_homescreen(choice)
      when "2"
            puts ""
            puts "Have a good day!"
            choice
        else
            puts "Please Select A Valid Option"
            self.welcome_user
        end
    end

    def self.login
        puts ""
        puts "Please Enter Username"
        name = gets.chomp
      current_user = self.find_or_create_by(name: name)
      current_user.high_score ||= 0
      current_user.last_score ||= 0
      current_user.save
      puts "==========================================="
      puts "Hi, #{current_user.name}"
      puts  "High Score: #{current_user.high_score}"
      puts  "Last Score: #{current_user.last_score}"
      puts ""
      current_user
    end

end
