class Api::OrdersController < ApplicationController
    def index
        @orders = Order.where(email: params[:email])
        render json: @orders
    end

    def show
        @order = Order.find(params[:id])
        render json: @order.to_json(include: { order_items: {include: :food_item} })
    end
    
    def create
        @order = Order.new(order_params)
        if @order.save
            render json: @order
        else
            render error: {error: "unable to start new order"}, status: 400
        end
    end

    private

    def order_params
        params.require(:order).permit(:email)
    end


end
