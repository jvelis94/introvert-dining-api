class OrderItem < ApplicationRecord
    belongs_to :food_item
    belongs_to :order
end
