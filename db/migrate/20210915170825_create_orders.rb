class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :email
      t.decimal :tax_percent, precision: 15, scale: 10, default: 0.0
      t.decimal :tax_amount, precision: 15, scale: 10, default: 0.0
      t.decimal :gratuity_percent, precision: 15, scale: 10, default: 0.18
      t.decimal :gratuity_amount, precision: 15, scale: 10, default: 0.0
      t.decimal :subtotal, precision: 15, scale: 10, default: 0.0
      t.decimal :total, precision: 15, scale: 10, default: 0.0
      t.boolean :isPaid, default: false

      t.timestamps
    end
  end
end
