class GoalSerializer < ActiveModel::Serializer
  attributes  :id, :start_date, :end_date, :user, :title, :achievements,
              :milestones

  def achievements
    object.achievements.pluck(:id)
  end

  def milestones
    object.milestones.pluck(:id)
  end
end
