class TicksController < ApplicationController
  def index
    @ticks = Tick.all

    render json: @ticks
  end

  def show
    @tick = Tick.find(params[:id])

    render json: @tick
  end

  #TODO need fix update. doesn't work
  def update
    @tick = Tick.find(params[:id])

    render
  end

  def create
    @tick = Tick.create(tick_params)
    render json: @tick
  end

  def destroy
    @tick = Tick.find(params[:id])
    @tick.destroy

    render json: @tick
  end

  private

  def tick_params
    params.require(:tick).permit(:user_id, :problem_id)
  end
end
