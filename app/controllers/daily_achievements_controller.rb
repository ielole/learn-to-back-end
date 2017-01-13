class DailyAchievementsController < ApplicationController
  def index
    @daily_achievements = DailyAchievement.all

    render json: @daily_achievements
  end
end
