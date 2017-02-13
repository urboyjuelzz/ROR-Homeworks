class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :product_id
      t.integer :order_total

      t.timestamps null: false
    end
  end
end
