class TicksController < ApplicationController

  #GET ticks/
  def index
    @ticks = Tick.all

    render json: @ticks
  end

  #GET ticks/:id
  def show
    @tick = Tick.find(params[:id])

    render json: @tick
  end

  #PATCH ticks/:id
  def update
    @tick = Tick.find(params[:id])
    @tick.update!(tick_params)

    render json: @tick
  end

  #POST ticks
  def create
    @tick = Tick.create(tick_params)
    render json: @tick
  end

  #DELETE /ticks
  def destroy
    @tick = Tick.find(params[:id])
    @tick.destroy

    render json: @tick
  end

  private

  def tick_params
    params.permit(:user_id, :problem_id)
  end
end
