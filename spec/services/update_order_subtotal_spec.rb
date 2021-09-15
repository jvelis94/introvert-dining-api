require 'rails_helper'

RSpec.describe UpdateOrderSubtotal, type: :model do
  describe '#call' do
    let(:order) {Order.create(id: 1, email: "velisjoel@gmail.com", subtotal: 0.0)}
    let(:food_item) {FoodItem.create(id: 1, price: 10, name: "hot dog", category: "Appetizer")}
    let(:new_order_item) { OrderItem.create({price: 10.00, quantity: 1, order_id: order.id, food_item_id: food_item.id}) }
    

    it "should update order subtotal either up or down depending on the action" do
        updated_order = UpdateOrderSubtotal.new(order, new_order_item, 'increment').call
        # puts order

        expect(order.subtotal).to eq(updated_order.subtotal)
    end
  end
end