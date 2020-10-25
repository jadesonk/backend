class Api::V1::ShiftsController < Api::V1::BaseController
  def show
    @shift = Shift.find(params[:id])
  end

  def create
    @shift = Shift.new
    @shift.user = User.find(shift_params[:user_id])
    @shift.job = Job.find(shift_params[:job_id])
    @shift.start_time = Time.zone.now

    if @shift.save
      render :show, status: :created
    else
      render_error
    end
  end

  def clock_out
    if true # @restaurant.update(restaurant_params)
      render :show
    else
      render_error
    end
  end

  private

  def shift_params
    params.require(:shift).permit(:user_id, :job_id)
  end

  def render_error
    render json: { errors: @shift.errors.full_messages },
      status: :unprocessable_entity
  end
end
