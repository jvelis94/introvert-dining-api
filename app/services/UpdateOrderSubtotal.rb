class UpdateOrderSubtotal
    def initialize(order, order_item, action)
        @order = order
        @order_item = order_item
        @action = action
    end

    def call
        @action === "increment" ? @order.update!(subtotal: increment_subtotal) : @order.update!(subtotal: decrement_subtotal)
        return @order
    end

    private

    def increment_subtotal
        higher_subtotal = @order.subtotal + @order_item.price
        return higher_subtotal
    end

    def decrement_subtotal
        lower_subtotal = @order.subtotal - @order_item.price
    end
end