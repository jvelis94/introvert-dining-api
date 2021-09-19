class Api::OrderItemsController < ApplicationController
    before_action :set_order
    before_action :set_order_item, only: [:destroy, :update, :create]

    def index
        @order_items = OrderItem.joins(:order).where({order: { email: @order.email}})
        render json: @order_items
    end

    def create
        @order_item = OrderItem.new(order_item_params)
        if @order_item.save
            UpdateOrderTotal.new(@order, @order_item, 'increment').call
            render json: @order.to_json(include: :order_items )
        else
            puts @order_item.errors.full_messages
            render error: {error: "unable to add item to order"}, status: 400
        end
    end

    def update
        params[:item_action] === "increment" ? UpdateOrderItemQuantity.new(@order, @order_item, "increment").call : UpdateOrderItemQuantity.new(@order, @order_item, "decrement").call
        render json: @order.reload.to_json(include: { order_items: {include: :food_item} })
    end

    def destroy
        @order_item.quantity.times { UpdateOrderTotal.new(@order, @order_item, 'decrement').call }
        @order_item.destroy
        render json: @order.reload.to_json(include: { order_items: {include: :food_item} })
    end

    private

    def order_item_params
        params.require(:order_item).permit(:price, :quantity, :order_id, :food_item_id)
    end

    def set_order_item
        @order_item = OrderItem.find(params[:id])
    end

    def set_order
        @order = Order.includes(:order_items).find(params[:order_id])
    end

end
