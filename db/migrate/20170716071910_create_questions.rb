class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.string :constraints
      t.string :testcases
      t.integer :marks
      t.string :difficulty

      t.timestamps null: false
    end
  end
end
