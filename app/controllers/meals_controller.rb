class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end
  
  def show
    @meal = Meal.find(params[:id])
  end
  
  def edit
    @meal = Meal.find(params[:id])
  end
end