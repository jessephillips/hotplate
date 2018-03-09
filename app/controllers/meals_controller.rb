class MealsController < ApplicationController
  def index
    @meals = ['meal 1', 'meal 2', 'meal 3']
  end
end
