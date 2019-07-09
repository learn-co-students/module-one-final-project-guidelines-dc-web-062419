class ChangeUsersQuestionsColumNames < ActiveRecord::Migration[5.0]
  def change
    rename_column :users_questions, :users_id, :user_id
    rename_column :users_questions, :questions_id, :question_id
  end
end
