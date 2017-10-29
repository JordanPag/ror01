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
    if @drinks.save
      for ingredient in Ingredient.all
        if params[:"#{:aabcdefghijklmnopqrstuvwxyz[ingredient.id]}"] = "1"
          @drinks.ingredients.create(name: ingredient.name)
          ingredient.drinks.create(name: @drinks.name)
        end
      end
      if @drinks.save
        render action: :show
      else
        render action: :edit
      end
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
