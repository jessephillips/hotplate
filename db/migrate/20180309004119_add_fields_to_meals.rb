class AddFieldsToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :servings, :float
  end
end
