require 'rails_helper'

RSpec.describe "Api::Orders", type: :request do
  let(:email) {"velisjoel@gmail.com"}


  describe "POST /create" do
    it 'initializes an order with an email' do
      expect do 
        post '/api/orders', params: { order: { email: email } }
      end.to change(Order, :count).by(1)
    end
  end

end
