class AchievementsController < ApplicationController
  before_action :set_achievement, only: [:show, :update, :destroy]

  def index
    @achievements = Achievement.all

    render json: @achievements
  end

  def show
    render json: @achievement
  end

  def create
    @achievements = Achievement.new(achievement_params)

    if @achievements.save
      render json: @achievement, status: :created
    else
      render json: @achievement.errors, status: :unprocessable_entity
    end
  end

  def update
    @achievement = Achievement.find(params[:id])

    if @achievement.update(achievement_params)
      head :no_content
    else
      render json: @achievement.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @achievement.destroy

    head :no_content
  end

  def set_achievement
    @achievement = Achievement.find(params[:id])
  end

  def achievement_params
    params.require(:achievement).permit(:log, :image, :goal_id, :user_id)
  end

  private :set_achievement, :achievement_params
end
