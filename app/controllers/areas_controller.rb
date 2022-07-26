class AreasController < ApplicationController
  # GET areas/
  def index
    @areas = Area.all

    render json: @areas
  end

  # GET areas/:id
  def show
    @area = Area.find(params[:id])
    render json: @area
  end

  # PATCH areas/:id
  def update
    @area= Area.find(params[:id])

    @area.update(area_params)

    render json: @area
  end

  # POST areas/
  def create
    @area = Area.create(area_params)

    render json: @area
  end

  #DELETE areas/:id
  def destroy
    @area = Area.find(params[:id])
    @area.destroy

    render json: @area
  end

  private

  def area_params
    params.permit(:name, :look_up_code, :parent_area_id)
  end
end
