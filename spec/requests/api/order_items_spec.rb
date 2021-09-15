require 'rails_helper'

RSpec.describe "Api::OrderItems", type: :request do
  let(:order) {Order.create(email: "velisjoel@gmail.com")}
  let(:new_order) {price: 10.00, quantity: 1, order_id: order.id, food_item_id: 1}

  describe "POST /create" do
    it 'create a new order item' do
      expect do 
        post '/api/orderItems', params: { order_item: { email: email } }
      end.to change(Order, :count).by(1)
    end
  end
end
