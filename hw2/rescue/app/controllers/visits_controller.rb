class VisitsController < ApplicationController
  def new
    @visits = Visit.new
    @visits.animal_id = params[:animal_id]
    @animal = Animal.find(params[:animal_id])
  end

  def index
  end

  def create
    params.permit!
    @animal = Animal.find(params[:visit][:animal_id])
    @animal.visits.create(visitor: params[:visit][:visitor])
    if @animal.save
      redirect_to "/animals/#{@animal.id}"
    else
      @visits = Visit.new(params[:visit])
      render action: :new
    end
  end

  def destroy
    Visit.find(params[:id]).destroy
    flash[:success] = "Visitor Deleted"
    redirect_to "/animals/#{params[:animal_id]}"
  end
end
