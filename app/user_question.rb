class UsersQuestions < ActiveRecord::Base
    belongs_to :user
    belongs_to :question

    def got_right
      
    end
end
