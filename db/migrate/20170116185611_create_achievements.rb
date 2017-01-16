class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.references :goal, index: true, foreign_key: true
      t.string :log
      t.string :image

      t.timestamps null: false
    end
  end
end
