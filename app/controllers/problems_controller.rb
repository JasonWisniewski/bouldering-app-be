class ProblemsController < ApplicationController
  def show
    @problems = Problem.all

    render json: @problems
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
