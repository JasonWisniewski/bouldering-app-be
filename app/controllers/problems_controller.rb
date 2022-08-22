class ProblemsController < ApplicationController
  #GET problems
  def index
    @problems = Problem.all

    render json: @problems
  end
  #GET problems/:id
  def show
    #might want to change to areas_id not sure yet
    @problem = Problem.find(params[:id])

    render json: @problem
  end

  #PATCH problems/:id
  def update
    @problem = Problem.find(params[:id])

    @problem.update(problem_params)

    render json: @problem
  end

  #POST /problems/:id
  def create
    @problem = Problem.create(problem_params)
    render json: @problem
  end

  #DELETE /problems/:id
  def destroy
    @problem = Problem.find(params[:id])
    @problem.destroy

    render json: @problem
  end

  private

  def problem_params
    params.permit(:areas_id, :grade, :description , :name, :rating)
  end
end
