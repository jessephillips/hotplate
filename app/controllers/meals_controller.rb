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
  
  def update
    @meal = Meal.find(params[:id])
    @meal.update(_meal_params)
    redirect_to meals_path
  end
  
  def new
    @meal = Meal.new
  end
  
  def create
    @meal = Meal.new(_meal_params)
    @meal.save
    redirect_to meals_path, notice: "#{@meal.name} created!"
  end
  
  def destroy
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to meals_path, notice: "#{@meal.name} successfully deleted!"
  end

private

  def _meal_params
    params.require(:meal).permit(:name, :cost_in_cents, :servings, :image, :restaurant_id)
  end

end
