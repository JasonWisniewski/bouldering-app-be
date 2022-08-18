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
    @problem = Problem.new(problem_param)
    render json: @problem
  end

  def destroy
  end

  private

  def problem_param
    params.require(:problem).permit(:areas_id, :grade, :description , :name, :rating)
  end
end
