class AnimalsController < ApplicationController
  def show
    @animals = Animal.find(params[:id])
  end

  def new
    @animals = Animal.new
  end

  def create
    params.permit!
    @animals = Animal.new(params[:animal])
    if @animals.favorite_food == "other"
      @animals.favorite_food = ""
      render action: :other
    else
      if @animals.save
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
    @animals = Animal.find(params[:id])
  end

  def update
    params.permit!
    Animal.find(params[:id]).update(params[:animal])
    @animals = Animal.find(params[:id])
    if @animals.favorite_food == "other"
      @animals.favorite_food = ""
      render action: :otheredit
    else
      if @animals.save
        render action: :show
      else
        render action: :edit
      end
    end
  end
  def destroy
    Animal.find(params[:id]).destroy
    flash[:success] = "Animal Deleted"
    redirect_to animals_path
  end
  def clear
    Animal.destroy_all
    flash[:success] = "All Animals Deleted"
    redirect_to "/"
  end
end
