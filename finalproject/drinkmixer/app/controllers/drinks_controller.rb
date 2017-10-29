class DrinksController < ApplicationController
  def show
    @drinks = Drink.find(params[:id])
  end

  def new
    @drinks = Drink.new
    @ingredients = Ingredient.all
  end

  def create
    params.permit!
    @drinks = Drink.new(name: params[:drink][:name], creator: params[:drink][:creator])
    for ingredient in Ingredient.all
      if params[:drink][:selection][ingredient.id] = true
        @drinks.ingredients.create(name: params[:drink][:selection][ingredient.id])
      end
    end
    if @drinks.save
      render action: :show
    else
      render action: :new
    end
  end

  def index
    @drinks = Drink.all
  end

  def edit
    @drinks = Drink.find(params[:id])
  end

  def update
    params.permit!
    Drink.find(params[:id]).update(params[:drink])
    @drinks = Drink.find(params[:id])
    if @drinks.save
      render action: :show
    else
      render action: :edit
    end
  end

  def destroy
    Drink.find(params[:id]).destroy
    flash[:success] = "drink Deleted"
    redirect_to drinks_path
  end

  def clear
    Drink.destroy_all
    flash[:success] = "All drinks Deleted"
    redirect_to "/"
  end
end
