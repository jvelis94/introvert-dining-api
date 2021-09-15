class AddCategoryToFoodItem < ActiveRecord::Migration[6.1]
  def change
    add_column :food_items, :category, :string
  end
end
