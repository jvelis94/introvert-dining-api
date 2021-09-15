class CreateFoodItems < ActiveRecord::Migration[6.1]
  def change
    create_table :food_items do |t|
      t.string :name
      t.string :description, null: true
      t.string :image_url, null: true
      t.float :price

      t.timestamps
    end
  end
end
