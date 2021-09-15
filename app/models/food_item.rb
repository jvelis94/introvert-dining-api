class FoodItem < ApplicationRecord
    has_many :order_items
end
