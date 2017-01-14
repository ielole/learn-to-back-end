class CreateMilestones < ActiveRecord::Migration
  def change
    create_table :milestones do |t|
      t.references :goal, index: true, foreign_key: true
      t.string :title
      t.datetime :date
      t.string :location
      t.string :image

      t.timestamps null: false
    end
  end
end
