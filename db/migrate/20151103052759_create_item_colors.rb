class CreateItemColors < ActiveRecord::Migration
  def change
    create_table :item_colors do |t|
      t.integer :item_id, limit: 11
      t.string :name, limit: 20
      t.string :name_cn, limit: 20
      t.string :color_url, limit:100
      t.string :item_url, limit:100
      t.timestamps null: false
    end
  end
end
