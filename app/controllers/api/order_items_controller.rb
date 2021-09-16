class Api::OrderItemsController < ApplicationController
    before_action :set_order

    def index
        @order_items = OrderItem.joins(:order).where({order: { email: @order.email}})
        render json: @order_items

    end

    def create
        @order_item = OrderItem.new(order_item_params)
        if @order_item.save
            UpdateOrderSubtotal.new(@order, @order_item, 'increment').call
            render json: @order_item.order
        else
            render error: {error: "unable to add item to order"}, status: 400
        end
    end

    private

    def order_item_params
        params.require(:order_item).permit(:price, :quantity, :order_id, :food_item_id)
    end

    def set_order
        @order = Order.find(params[:order_id])
    end

end
