class CreateUsers < ActiveRecord::Migration[5.0]
  def change
      create_table :users do |t|
        t.string :name
        t.integer :high_score
        t.integer :last_score
      end
  end
end
