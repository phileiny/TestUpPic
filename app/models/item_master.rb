class ItemMaster < ActiveRecord::Base
  has_many :item_colors , dependent: :destroy
  accepts_nested_attributes_for :item_colors , allow_destroy: true
end
