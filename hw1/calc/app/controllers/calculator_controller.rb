class CalculatorController < ApplicationController
  def show
  end
  def calculate
    x = params[:x].to_i
    y = params[:y].to_i
    @sum = x + y
    @product = x * y
    if y==0
      @quotient = "Undefined"
    else
      @quotient = x / y
    end
    @difference = x - y
  end
end
