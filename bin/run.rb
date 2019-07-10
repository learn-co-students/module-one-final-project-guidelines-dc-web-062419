require_relative '../config/environment'

a = User.welcome_user
if a != "3"
UserInterface.user_homescreen(a)
end
