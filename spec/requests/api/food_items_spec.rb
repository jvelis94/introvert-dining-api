require 'rails_helper'

RSpec.describe "Api::FoodItems", type: :request do
  let(:food_item) {FoodItem.create(id: 1, name: "burger", price: 16.0)}
  let(:food_items_test) {FoodItem.all}

  describe "GET /index" do
    it 'should return status 200' do
      get "/api/food_items"
      expect(response.status).to eq(200)
    end
    it 'return all food items' do
      get "/api/food_items"
      expect(assigns(:food_items)).to eq(food_items_test)
    end
  end
end
