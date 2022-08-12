class AreasController < ApplicationController
  def index
    @areas = Area.all

    render json: @areas
  end

  def show
    @area = Area.find(params[:id])
    render json: @area
  end

  def update
  end

  def create
  end

  def destroy
  end
end
