require_relative '../config/environment'




a = User.welcome_user
# binding.pry
if a != "3"
UserInterface.give_user_questions
end

# puts "HELLO WORLD"

binding.pry
