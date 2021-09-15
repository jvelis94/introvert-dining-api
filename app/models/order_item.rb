class OrderItem < ApplicationRecord
    has_and_belongs_to_many :food_items
    belongs_to :order
end
