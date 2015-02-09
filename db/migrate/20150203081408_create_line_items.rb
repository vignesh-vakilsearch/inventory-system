class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.belongs_to :product
      t.belongs_to :cart, index: true

      t.timestamps null: false
    end
    add_foreign_key :line_items, :carts
  end
end
