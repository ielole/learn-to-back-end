class MilestonesController < ApplicationController
  before_action :set_milestone, only: [:show, :update, :destroy]

  def index
    @milestones = Milestone.all

    render json: @milestones
  end

  def show
    render json: @milestone
  end

  def create
    @milestone = Milestone.new(milestone_params)

    if @milestone.save
      render json: @milestone, status: :created
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  def update
    @milestone = Milestone.find(params[:id])

    if @milestone.update(milestone_params)
      head :no_content
    else
      render json: @milestone.errors, status: :unprocessable_entity
    end
  end

  def set_milestone
    @milestone = Milestone.find(params[:id])
  end

  def milestone_params
    params.require(:milestone).permit(:title, :date, :location, :image,
                                      :goal_id)
  end

  private :set_milestone, :milestone_params
end
