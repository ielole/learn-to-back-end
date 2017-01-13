class DailyAchievementsController < ApplicationController
  before_action :set_daily_achievement, only: [:show, :update, :destroy]

  def index
    @daily_achievements = DailyAchievement.all

    render json: @daily_achievements
  end

  def show
    render json: @daily_achievement
  end

  def create
    @daily_achievements = DailyAchievement.new(daily_achievement_params)

    if @daily_achievements.save
      render json: @daily_achievement, status: :created
    else
      render json: @daily_achievement.errors, status: :unprocessable_entity
    end
  end

  def update
    @daily_achievement = DailyAchievement.find(params[:id])

    if @daily_achievement.update(daily_achievement_params)
      head :no_content
    else
      render json: @daily_achievement.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @daily_achievement.destroy

    head :no_content
  end

  def set_daily_achievement
    @daily_achievement = DailyAchievement.find(params[:id])
  end

  def daily_achievement_params
    params.require(:daily_achievement).permit(:log, :image, :goal_id, :user_id)
  end

  private :set_daily_achievement, :daily_achievement_params
end
