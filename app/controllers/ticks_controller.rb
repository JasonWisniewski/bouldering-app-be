class TicksController < ApplicationController
  def index
    @ticks = Tick.all

    render json: @ticks
  end

  def show
  end

  def update
  end

  def create
  end

  def destroy
  end
end
