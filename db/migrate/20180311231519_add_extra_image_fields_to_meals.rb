class AddExtraImageFieldsToMeals < ActiveRecord::Migration[5.1]
  def change
    add_column :meals, :image_file_name, :string
    add_column :meals, :image_content_type, :string
    add_column :meals, :image_file_size, :integer
    add_column :meals, :image_updated_at, :datetime
  end
end
