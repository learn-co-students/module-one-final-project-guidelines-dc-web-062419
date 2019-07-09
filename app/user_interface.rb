


#User Interface

class UserInterface

    def     self.give_user_questions
        current_user_id = 
        current_score = 0
        questions = Question.all.shuffle
            questions.each do |question|
           puts question.question
           puts "Answer 'True' or 'False'"
           answer = gets.chomp.downcase
           if answer.casecmp(question.correct_answer) == 0
            puts "Correct!"
            current_score += 1

           elsif
            answer == "exit"
          puts  "Your score is: #{current_score}"
            break
           else
            puts "WRONG!!!!!!!!!"
            puts "Your score is: #{current_score}"
            break
           end
        end
    end

    def save_user_score

    end

end