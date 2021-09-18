class Api::ChargesController < ApplicationController
    def create
        puts params
        Stripe.api_key = ENV["STRIPE_SECRET_KEY"]
        order = Order.find(params[:order_id])
        amount = order.total.to_i * 100
        
        charge = Stripe::Charge.create(
            amount: amount,
            description: "Introvert Dining",
            currency: 'usd',
            source: params[:token]
        )
        
        order.update!(payment: charge.to_json, isPaid: true)
        render json: order.to_json(include: { order_items: {include: :food_item} })


    rescue Stripe::CardError => e
        puts e.message
    end
end
