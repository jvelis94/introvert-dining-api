class Api::OrderItemsController < ApplicationController

    def create
        @order_item = OrderItem.new(order_item_params)
        if @order_item.save
            render json: @order_item
        else
            render error: {error: "unable to add item to order"}, status: 400
        end
    end

    private
    def order_item_params
        params.require(:order_item).permit(:price, :quantity, :order_id, :food_item_id)
    end

end
