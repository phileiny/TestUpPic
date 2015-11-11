class CreateItemMasters < ActiveRecord::Migration
  def change
    create_table :item_masters do |t|
      t.string :title, limit: 100
      t.string :title_cn, limit: 100
      t.string :desc, limit: 300
      t.string :desc_cn, limit: 300
      t.string :spec, limit: 500
      t.decimal :unitprice, precision:8, scale:2
      t.decimal :saleprice, precision:8, scale:2
      t.string :sizetype_id, limit: 100
      t.string :model_id, limit: 100
      t.timestamps null: false
    end
  end
end
