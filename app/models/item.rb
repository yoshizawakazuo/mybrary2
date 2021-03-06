class Item < ApplicationRecord

  
  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to_active_hash :category 
  belongs_to_active_hash :second_category
  
   
  with_options presence: true do
    validates :image
    validates :item_name
    validates :info 
    validates :valuation
    validates :category
    validates :second_category
    validates :authr
     
  end

  with_options numericality: {other_than: 1} do
    validates :category_id   
    validates :second_category_id
  end
 

end