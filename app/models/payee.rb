class Payee < ApplicationRecord
    has_many :order_items
    belongs_to :order
end
