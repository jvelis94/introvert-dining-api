class UpdateOrderItemQuantity
    def initialize(order, order_item, action)
        @order = order
        @order_item = order_item
        @action = action
    end

    def call
        @action === "increment" ? increment : decrement
        return @order_item
    end

    private

    def increment
        @order_item.increment!(:quantity)
        UpdateOrderTotal.new(@order, @order_item, "increment").call
    end


    def decrement
        @order_item.decrement!(:quantity)
        UpdateOrderTotal.new(@order, @order_item, "decrement").call
    end

end