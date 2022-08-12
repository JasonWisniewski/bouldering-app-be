class TicksController < ApplicationController
  def show
    @ticks = Tick.all

    render json: @ticks
  end

  def index
  end

  def update
  end

  def create
  end

  def destroy
  end
end
