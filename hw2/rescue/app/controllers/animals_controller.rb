class AnimalsController < ApplicationController
  def show
  end

  def new
    @animal = Animal.new
  end

  def create
    params.permit!
    @animal = Animal.new(params[:animal])
    if @animal.favorite_food == "other"
      @animal.favorite_food = ""
      render action: :other
    elsif @animal.valid?
      render action: :show
    else
      render action: :new
    end
  end

  def other
  end
end
