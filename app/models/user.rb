class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
      
        
         has_many :items, foreign_key: [:item_name,:authr]
  
   extend ActiveHash::Associations::ActiveRecordExtensions

     belongs_to_active_hash :category 
     belongs_to_active_hash :second_category
  

         zenkaku = /\A[ぁ-んァ-ン一-龥]/
         katakana = /\A[ァ-ンヴー]/

         with_options presence: true do
           validates :nickname
           validates :first_name,format: { with: zenkaku, message: "Full-width characters"}
           validates :last_name, format: { with: zenkaku, message: "Full-width characters"}
           validates :first_name_kana, format: { with: katakana, message: "Full-width characters"}
           validates :last_name_kana,  format: { with: katakana, message: "Full-width characters"}
           validates :email, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "can't be blank"}
           validates :password,format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: " Include both letters and numbers"}
         end
         
         with_options numericality: {other_than: 1} do
          validates :category_id   
          validates :second_category_id
        end
end
