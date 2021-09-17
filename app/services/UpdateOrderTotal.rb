class UpdateOrderTotal
    def initialize(order, order_item, action)
        @order = order
        @order_item = order_item
        @action = action
    end

    def call
        @action === "increment" ? @order.update!(total: increment_total) : @order.update!(total: decrement_total)
        return @order
    end

    private

    def increment_total
        higher_total = @order.total + @order_item.price
        return higher_total
    end

    def decrement_total
        lower_total = @order.total - @order_item.price
    end
end