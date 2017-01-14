class GoalSerializer < ActiveModel::Serializer
  attributes  :id, :start_date, :end_date, :user, :title, :daily_achievements,
              :milestones

  def daily_achievements
    object.daily_achievements.pluck(:id)
  end

  def milestones
    object.milestones.pluck(:id)
  end
end
