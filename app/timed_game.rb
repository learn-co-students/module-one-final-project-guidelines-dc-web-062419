class TimedGame

        def self.give_user_questions(user)
                    current_score = 0
                    question_tracker = []
                    questions = Question.all.shuffle
                    puts ""
                    puts "30 seconds GO!!!!!!!"
        Timeout::timeout(5){
                        questions.each do |question|
                            question.question.gsub!("&quot;" , '"')
                            question.question.gsub!("&#039;" , "'")
                            question_tracker << question
                            puts "========================================================="
                            puts "Answer 'true' or 'false'. Enter 'exit' to quit"
                            puts question.question
                            puts ""
                            puts ""
                            puts ""
                            answer = gets.chomp.downcase
                            while answer != "true" && answer != "false" && answer != "exit" do
                                puts "Please input 'true' or 'false'"
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
                                    puts  "Your score is: #{current_score}"
                                    puts ""
                                end
                            elsif
                                answer == "exit"
                                # puts  "Your score was: #{current_score}"
                                # user.last_score = current_score
                                # user.save
                                # UserInterface.user_homescreen(user)
                                break

                            else
                                puts ""
                                puts "Wrong!"
                                break
                            #     puts ""
                            #     puts "Wrong!"
                            # self.endgame(user, current_score, question_tracker)
                            # break
                            end
                    end}
                    puts ""
                self.endgame(user, current_score, question_tracker)
                    rescue Timeout::Error
                        puts ""
        puts "TIMES UP!! TIMES UP!! TIMES UP!!"
        self.endgame(user, current_score, question_tracker)
        end



            def self.endgame(user, current_score, question_tracker)
                question = question_tracker.last
                puts "Your score was: #{current_score}"
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
                        puts "Welcome Back, #{user.name}!"
                        puts "Your Last Score was: #{current_score}"
                        puts "Your High Score is: #{user.high_score}"
                        UserInterface.user_homescreen(user)
                end
            


end