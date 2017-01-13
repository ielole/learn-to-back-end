class DailyAchievementSerializer < ActiveModel::Serializer
  attributes :id, :log, :image, :goal

  def goal
    object.goal.id
  end
end
