class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :name
      t.integer :cost_in_cents

      t.timestamps
    end
  end
end
