class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :from_name
      t.text :from_street1
      t.text :from_street2
      t.text :from_city
      t.text :from_state
      t.text :from_zip
      t.text :from_phone

      t.string :to_name
      t.text :to_company
      t.text :to_street
      t.text :to_city
      t.text :to_state
      t.text :to_zip

      t.string :length
      t.string :width
      t.string :height
      t.string :weight




      t.timestamps
    end
  end
end
