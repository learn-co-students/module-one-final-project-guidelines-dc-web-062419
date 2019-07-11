class TimedGame

        def self.give_user_questions(user)
                    current_score = 0
                    question_tracker = []
                    questions = Question.all.shuffle
                    puts ""
                    puts "30 seconds GO!!!!!!!"
        Timeout::timeout(32){
            end_time = Time.now + 30
                        questions.each do |question|
                            question.question.gsub!("&quot;" , '"')
                            question.question.gsub!("&#039;" , "'")
                            question_tracker << question
                            current_time = end_time - Time.now
                            if current_time < 1
                                current_time = 1
                            end
                            puts "=====================TIME REMAINING: Less Than #{current_time.to_i}s =================================="
                            puts ""
                            puts question.question
                            puts ""
                            puts ""
                            puts ""
                            puts  "Answer 'true' or 'false'. Enter 'exit' to quit"  
                            answer = gets.chomp.downcase
                            while answer != "true" && answer != "false" && answer != "exit" do
                                puts "Please input 'true' or 'false'  "
                                answer = gets.chomp.downcase
                            end
                            if answer.casecmp(question.correct_answer) == 0
                                puts "Correct!"
                                current_score += 1
                                question_info = UsersQuestions.find_or_create_by(question_id: question.id, user_id: user.id)
                                question_info.got_right = 1
                                question_info.save
                                user.save
                                if current_score > user.high_score
                                    puts "NEW HIGH SCORE OF #{current_score}!!!!"
                                    user.high_score = current_score
                                else
                                    puts  "Your Score is: #{current_score}"
                                    puts ""
                                end
                            elsif
                                answer == "exit"

                                break

                            else
                                puts ""
                                puts "Wrong!"
                                puts  "Your Score is: #{current_score}"
                                puts ""             
                                question_info = UsersQuestions.find_or_create_by(question_id: question.id, user_id: user.id)
                                question_info.got_right = 0
                                question_info.save
                                user.save                   
                                # break
    
                            end
                    end}
                    puts ""
                self.endgame(user, current_score, question_tracker)
                    rescue Timeout::Error
                        puts ""
        puts "TIMES UP!! TIMES UP!! TIMES UP!!"
        puts ""
        self.endgame(user, current_score, question_tracker)
        end



            def self.endgame(user, current_score, question_tracker)
                question = question_tracker.last
                puts "Your Score Was: #{current_score}"
                        case current_score
                        when 0..13
                          puts ""
                          puts "Go study!"
                        when 14..27
                          puts ""
                          puts "Meh! You can do better"
                        when 28...40
                          puts ""
                          puts "You're ok... but keep trying"
                        when 41..50
                          puts ""
                          puts "Ok, I know you've played this 10 times!"
                        end
                        user.last_score = current_score
                        question_info = UsersQuestions.find_or_create_by(question_id: question.id, user_id: user.id)
                        question_info.got_right = 0
                        question_info.save
                        user.save
                        puts ""
                        puts "================================================="
                        puts ""
                        puts "Welcome Back, #{user.name}!"
                        puts "Your Most Recent Score Was: #{current_score}"
                        puts "Your High Score is: #{user.high_score}"
                        puts ""
                        UserInterface.user_homescreen(user)
                end
            


end