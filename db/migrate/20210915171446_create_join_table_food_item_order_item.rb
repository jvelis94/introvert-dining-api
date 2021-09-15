class CreateJoinTableFoodItemOrderItem < ActiveRecord::Migration[6.1]
  def change
    create_join_table :food_items, :order_items do |t|
      t.index [:food_item_id, :order_item_id]
      t.index [:order_item_id, :food_item_id]
    end
  end
end
