class ProblemsController < ApplicationController
  def index
    @problems = Problem.all

    render json: @problems
  end

  def show
    #might want to change to areas_id not sure yet
    @problem = Problem.find(params[:id])

    render json: @problem
  end

  def update
  end

  def create
  end

  def destroy
  end
end
