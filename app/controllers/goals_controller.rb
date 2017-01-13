class GoalsController < ProtectedController
  before_action :set_goal, only: [:show, :update, :destroy]

  def index
    @goals = Goal.all

    render json: @goals
  end

  def show
    render json: Goal.find(params[:id])
  end

  def create
    @goal = current_user.goals.build(goal_params)

    if @goal.save
      render json: @goal, status: :created
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  def update
    if @goal.update(goal_params)
      head :no_content
    else
      render json: @goal.errors, status: :unprocessable_entity
    end
  end

  def set_goal
    @goal = current_user.goals.find(params[:id])
  end

  def goal_params
    params.require(:goal).permit(:title, :start_date, :end_date, :user_id)
  end

  private :set_goal, :goal_params
end
