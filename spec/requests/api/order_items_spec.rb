require 'rails_helper'

RSpec.describe "Api::OrderItems", type: :request do
  let(:order) {Order.create(id: 1, email: "velisjoel@gmail.com")}
  let(:food_item) {FoodItem.create(id: 1, price: 10, name: "hot dog", category: "Appetizer")}
  let(:new_order_item) { {price: 10.00, quantity: 1, order_id: order.id, food_item_id: food_item.id} }
  let(:order_items_by_email) {OrderItem.joins(:order).where({order: { email: "velisjoel@gmail.com"}})}

  describe "GET / index" do
    it "should return orders by email" do
      get "/api/orders/#{order.id}/order_items", params: {email: "velisjoel@gmail.com"}
      expect(assigns(:order_items)).to eq(order_items_by_email)
    end
  end
  
  describe "POST /create" do
    it 'create a new order item' do
      expect do 
        post "/api/orders/1/order_items", params: { order_item: new_order_item }
      end.to change(OrderItem, :count).by(1)
    end
  end

  describe "DELETE /destroy" do
    it 'should destroy an order item record' do
      @order_item = OrderItem.create({id: 1, price: 10.00, quantity: 1, order_id: order.id, food_item_id: food_item.id})
      expect do 
        delete "/api/orders/1/order_items/1"
      end.to change(OrderItem, :count).by(-1)
    end
  end
end
