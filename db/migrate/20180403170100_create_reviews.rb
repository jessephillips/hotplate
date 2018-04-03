class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :meal, foreign_key: true, index: true
      t.string     :description
      t.integer    :rating
      t.string     :featured_image

      t.timestamps
    end
  end
end
