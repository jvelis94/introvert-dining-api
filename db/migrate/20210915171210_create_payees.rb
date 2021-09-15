class CreatePayees < ActiveRecord::Migration[6.1]
  def change
    create_table :payees do |t|
      t.string :email
      t.decimal :tax_amount, default: 0.0
      t.decimal :gratuity_amount, default: 0.0
      t.decimal :subtotal, default: 0.0
      t.decimal :total, default: 0.0
      t.boolean :isPaid, default: false

      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
