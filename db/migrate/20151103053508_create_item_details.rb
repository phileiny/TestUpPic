class CreateItemDetails < ActiveRecord::Migration
  def change
    create_table :item_details do |t|
      t.integer :item_id, limit: 11
      t.integer :color_id, limit: 11
      t.string :size_name, limit: 20
      t.string :itemcode ,limit: 30
      t.timestamps null: false
    end
  end
end
