class AnimalsController < ApplicationController
  def show
    @animal = Animal.find(params[:id])
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
    else
      if @animal.save
        render action: :show
      else
        render action: :new
      end
    end
  end

  def other
  end

  def index
    @animals = Animal.all
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def update
    params.permit!
    Animal.find(params[:id]).update(params[:animal])
    @animal = Animal.find(params[:id])
    if @animal.favorite_food == "other"
      @animal.favorite_food = ""
      render action: :otheredit
    else
      if @animal.save
        render action: :show
      else
        render action: :edit
      end
    end
  end
end
