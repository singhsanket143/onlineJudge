class CreateLeaderboards < ActiveRecord::Migration
  def change
    create_table :leaderboards do |t|
      t.integer :points
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
