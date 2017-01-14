class MilestoneSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :image, :goal

  def goal
    object.goal.id
  end
end
