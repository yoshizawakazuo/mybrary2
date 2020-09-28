class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string         :item_name          ,null: false
      t.string         :authr             ,null: false
      t.string         :image
      t.text           :info
      t.integer        :category_id        ,null: false
      t.integer        :second_category_id ,null: false
      t.integer        :valuation          ,null: false
      t.references     :user               ,null: false
      t.timestamps
    end
  end
end
