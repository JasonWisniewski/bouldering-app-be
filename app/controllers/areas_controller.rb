class AreasController < ApplicationController
  def show
    @areas = Area.all

    render json: @areas
  end

  def index
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
