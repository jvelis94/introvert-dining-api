require 'rails_helper'

RSpec.describe UpdateOrderItemQuantity, type: :model do
  describe '#call' do
    let(:order) {Order.create(id: 1, email: "velisjoel@gmail.com", total: 0.0)}
    let(:food_item) {FoodItem.create(id: 1, price: 10, name: "hot dog", category: "Appetizer")}
    let(:order_item) { OrderItem.create({price: 10.00, quantity: 1, order_id: order.id, food_item_id: food_item.id}) }
    

    it "should update order quantity up if order action === increment" do
        updated_order_item = UpdateOrderItemQuantity.new(order, order_item, 'increment').call
        expect(order_item.quantity).to eq(updated_order_item.quantity)
    end

    it "should update order quantity down if order action === decrement" do
      updated_order_item = UpdateOrderItemQuantity.new(order, order_item, 'decrement').call
      expect(order_item.quantity).to eq(updated_order_item.quantity)
    end

  end
end