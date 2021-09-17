require 'rails_helper'

RSpec.describe UpdateOrderTotal, type: :model do
  describe '#call' do
    let(:order) {Order.create(id: 1, email: "velisjoel@gmail.com", total: 0.0)}
    let(:food_item) {FoodItem.create(id: 1, price: 10, name: "hot dog", category: "Appetizer")}
    let(:new_order_item) { OrderItem.create({price: 10.00, quantity: 1, order_id: order.id, food_item_id: food_item.id}) }
    

    it "should update order total up if action === increment" do
        updated_order = UpdateOrderTotal.new(order, new_order_item, 'increment').call

        expect(order.total).to eq(updated_order.total)
    end

    it "should update order total up if action === decrement" do
        updated_order = UpdateOrderTotal.new(order, new_order_item, 'decrement').call

        expect(order.total).to eq(updated_order.total)
    end   
  end
end