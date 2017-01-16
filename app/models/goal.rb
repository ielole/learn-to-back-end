class Goal < ActiveRecord::Base
  belongs_to :user
  has_many :achievements, dependent: :destroy
  has_many :milestones, dependent: :destroy
end
