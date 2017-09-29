class AnimalsController < ApplicationController
  def show
    @animal = Animal.new
    @animal.name = "Jerry"
    @animal.age = 13
    @animal.kind = "ferret"
  end

  def new
    @animal = Animal.new
  end

  def create
    params.permit!
    @animal = Animal.new(params[:animal])
    if @animal.valid?
      render action: :show
    else
      render action: :new
    end
  end
end
