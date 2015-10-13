class CreateMotels < ActiveRecord::Migration
  def change
    create_table :motels do |t|
      t.string :name
      t.string :description
      t.string :URL_WebPage
      t.string :URL_Video
      t.string :prices
      t.string :logo
      t.string :form_pagestring
      t.references :type, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
