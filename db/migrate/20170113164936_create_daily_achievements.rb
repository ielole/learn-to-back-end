class CreateDailyAchievements < ActiveRecord::Migration
  def change
    create_table :daily_achievements do |t|
      t.references :goal, index: true, foreign_key: true
      t.string :log
      t.string :image

      t.timestamps null: false
    end
  end
end
