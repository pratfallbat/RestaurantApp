class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :food_item, index: true, foreig_key: true
      t.string :name
      t.string :phone
      t.text :address

      t.timestamps null: false
    end
  end
end
