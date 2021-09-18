class AddPaymentToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :payment, :jsonb
  end
end
