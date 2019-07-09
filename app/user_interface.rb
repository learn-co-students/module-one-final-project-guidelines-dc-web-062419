


#User Interface

class UserInterface

    def     self.give_user_questions(user)
        # current_user_id

        current_score = 0
        questions = Question.all.shuffle
            questions.each do |question|
           puts question.question
           puts "Answer 'True' or 'False'"
           answer = gets.chomp.downcase
           if answer.casecmp(question.correct_answer) == 0
            puts "Correct!"
            current_score += 1
            puts  "Your score is: #{current_score}"
                if current_score > user.high_score
                    puts "New high score of #{current_score}"
                    user.high_score = current_score
                end
           elsif
            answer == "exit"
          puts  "Your score is: #{current_score}"
                user.last_score = current_score
            break
           else
            puts "WRONG!!!!!!!!!"
            puts "Your score is: #{current_score}"
            user.last_score = current_score
            break
           end
        end
    end

end