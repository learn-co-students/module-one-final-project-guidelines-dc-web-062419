require_relative '../config/environment'


# binding.pry

a = User.welcome_user
# binding.pry
if a != "3"
UserInterface.give_user_questions(a)
a.save
end
# puts "HELLO WORLD"

# binding.pry
