class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.references :user, index: true, foreign_key: true
      t.string :title
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
