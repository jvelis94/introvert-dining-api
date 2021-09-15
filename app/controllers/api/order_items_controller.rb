class Api::OrderItemsController < ApplicationController

    def create
        @order_item = OrderItem.new(order_item_params)
        @order_item.save
    end

    private
    def order_item_params
        params.require(:order_item).permit(:price, :quantity, :order_id, :food_item_id)
    end

end
