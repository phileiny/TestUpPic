class ItemColor < ActiveRecord::Base
  belongs_to :item_master
  has_many :item_details ,dependent: :destroy
  accepts_nested_attributes_for :item_details,  allow_destroy: true
end
