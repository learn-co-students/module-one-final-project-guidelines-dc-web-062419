class Question < ActiveRecord::Base
        has_many :users_questions
        has_many :users, through: :users_questions

          def self.give_user_questions(user)
            current_score = 0
            questions = Question.all.shuffle
              puts ""
              puts "START GAME"
                  questions.each do |question|
                    puts "========================================================="
                    puts question.question
                    puts "Answer 'True' or 'False'"
                    answer = gets.chomp.downcase
                      if answer.casecmp(question.correct_answer) == 0
                        puts "Correct!"
                        current_score += 1
                        question_info = UsersQuestions.find_or_create_by(question_id: question.id, user_id: user.id)
                        question_info.got_right = 1
                        question_info.save
                          if current_score > user.high_score
                            puts "NEW HIGH SCORE OF #{current_score}!!!!"
                            user.high_score = current_score
                          else
                            puts  "Your score is: #{current_score}"
                          end
                      elsif
                        answer == "exit"
                        puts  "Your score was: #{current_score}"
                        user.last_score = current_score
                        UserInterface.user_homescreen(user)
                        break
                      else
                        case current_score
                        when 0..5
                          puts ""
                          puts "WRONG! Go study!"
                        when 6..10
                          puts ""
                          puts "Meh! You can do better"
                        when 11...15
                          puts ""
                          puts "You're ok... but keep trying"
                        when 16..20
                          puts ""
                          puts "Ok, I know you've played this 10 times!"
                        end
                        puts "Your score is: #{current_score}"
                        puts "Your High Score is: #{user.high_score}"
                        user.last_score = current_score
                        question_info = UsersQuestions.find_or_create_by(question_id: question.id, user_id: user.id)
                        question_info.got_right = 0
                        question_info.save
                        puts "================================================="
                        UserInterface.user_homescreen(user)
                        break
                      end
                    end
            end

  def self.high_score_board(a)
    i = 0
    sorted_scored = User.all.sort_by{|user| user.high_score}.reverse
      puts ""
      puts "Top 5 Scores"
      puts "------------"
        sorted_scored.each do |user|
          if i <= 4
            puts "Name: #{user.name} - Score: #{user.high_score}"
            i += 1
          end
        end
      puts ""
      puts "Press Enter to return to Home Screen"
      gets.chomp
      puts "What would you like to do next?"
      UserInterface.user_homescreen(a)
  end

  def low_score_board
    User.all.sort_by{|user| user.high_score}
  end

end
