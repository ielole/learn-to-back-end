class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :update, :destroy]

  def index
    @goals = Goal.all

    render json: @goals
  end

  def show
    render json: Goal.find(params[:id])
  end

  def set_goal
    @goal = Goal.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:title, :start_date, :end_date, :user_id)
  end

  private :set_goal, :goal_params
end
