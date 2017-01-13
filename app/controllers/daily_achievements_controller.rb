class DailyAchievementsController < ApplicationController
  def index
    @daily_achievements = DailyAchievement.all

    render json: @daily_achievements
  end

  def create
    @daily_achievements = DailyAchievement.new(daily_achievement_params)

    if @daily_achievements.save
      render json: @daily_achievement, status: :created
    else
      render json: @daily_achievement.errors, status: :unprocessable_entity
    end
  end

  def set_daily_achievement
    @daily_achievement = DailyAchievement.find(params[:id])
  end

  def daily_achievement_params
    params.require(:daily_achievement).permit(:log, :image, :goal_id, :user_id)
  end

  private :set_daily_achievement, :daily_achievement_params
end
