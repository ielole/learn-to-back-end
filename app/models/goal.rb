class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :daily_achievements, dependent: :destroy
  has_many :milestones, dependent: :destroy
end
