class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
        create_table :questions do |t|
        t.string :question
        t.integer :correct_answer
        end
  end
end

