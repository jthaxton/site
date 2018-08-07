class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :text
      t.text :name
      t.text :city
      t.text :state
      t.text :zip
      t.text :phone

      t.string :tname
      t.text :tcompany
      t.text :tstreet
      t.text :tcity
      t.text :tstate
      t.text :tzip

      t.string :length
      t.string :width
      t.string :height
      t.string :weight




      t.timestamps
    end
  end
end
