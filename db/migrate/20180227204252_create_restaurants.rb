class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table  :restaurants do |t|
      t.string    :name
      t.string    :address
      t.string    :website
      t.string    :phone
      t.string    :style

      t.timestamps
    end
  end
end
