class FixingQuestionsDataType < ActiveRecord::Migration[5.0]
  def change
    change_column :questions, :correct_answer, :string
  end
end
