class MilestonesController < ApplicationController
  def index
    @milestones = Milestone.all

    render json: @milestones
  end
end
