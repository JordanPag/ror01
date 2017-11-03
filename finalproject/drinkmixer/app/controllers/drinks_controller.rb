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
    @drinks = Drink.new(name: params[:drink][:name], creator: params[:drink][:creator], image: params[:drink][:image])
    @ingredient = Ingredient.new(name: params[:drink][:name], default: false)
    if @drinks.save
      for ingredient in Ingredient.all
        for id in params[:drink][:ingredient_ids]
          if id.to_i == ingredient.id
            @drinks.ingredients << ingredient
          end
        end
      end
      if @drinks.save
        @ingredient.save
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
    @ingredients = Ingredient.all
  end

  def update
    params.permit!
    @drinks = Drink.find(params[:id])
    @drinks.update(name: params[:drink][:name], creator: params[:drink][:creator], image: params[:drink][:image])
    if @drinks.save
      for ingredient in Ingredient.all
        for id in params[:drink][:ingredient_ids]
          if id == ingredient.id
            @drinks.ingredients << ingredient
            ingredient.drinks << @drinks
          end
        end
      end
      if @drinks.save
        render action: :show
      else
        render action: :edit
      end
    else
      render action: :edit
    end
  end

  def destroy
    a = Drink.find(params[:id])
    for ingredient in Ingredient.all
      if ingredient.default == false
        if ingredient.name == a.name
          ingredient.destroy
        end
      end
    end
    a.destroy
    flash[:success] = "drink Deleted"
    redirect_to drinks_path
  end

  def clear
    for drink in Drink.all
      drink.destroy
    end
    for ingredient in Ingredient.all
      if ingredient.default == false
        ingredient.destroy
      end
    end
    redirect_to "/"
  end
end
