class User < ActiveRecord::Base


    def self.welcome_user
        puts "Welcome, Please Enter A Number From The Following Choices"
        puts "1. Login"
        puts "2. Create New User"
        puts "3. Quit"
        choice = gets.chomp

        case choice
        when "1"
            self.login
        when "2"
            self.login
        when "3"
            puts "Have a good day!"
        end

    end

    def self.login
        puts "Please Enter Username"
        name = gets.chomp
      current_user = self.find_or_create_by(name: name)
      puts "Hi, #{current_user.name}"
      puts  "High Score: #{current_user.high_score}" 
      puts  "Last Score: #{current_user.last_score}" 
    end



end