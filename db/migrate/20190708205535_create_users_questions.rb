class CreateUsersQuestions < ActiveRecord::Migration[5.0]
  def change
        create_table :users_questions do |t|
        t.integer :users_id
        t.integer :questions_id
        t.integer :got_right
      end
  end
end