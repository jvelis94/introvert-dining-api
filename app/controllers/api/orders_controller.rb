class Api::OrdersController < ApplicationController

    def create
        @order = Order.new(params[:email])
        if @order.save
            render json: @order
        else
            render error: {error: "unable to start new order"}, status: 400
        end
    end

    
end
