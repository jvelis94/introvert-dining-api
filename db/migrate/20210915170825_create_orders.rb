class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :email
      t.float :tax_percent, default: 0.0875
      t.float :tax_amount, default: 0.0
      t.float :gratuity_percent, default: 0.18
      t.float :gratuity_amount, default: 0.0
      t.float :subtotal, default: 0.0
      t.float :total, default: 0.0
      t.boolean :isPaid, default: false

      t.timestamps
    end
  end
end
