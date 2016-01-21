class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :description, :string
    add_column :users, :URL_WebPage, :string
    add_column :users, :URL_Video, :string
    add_attachment :users, :logo
    add_column :users, :logo, :string
    add_column :users, :form_page, :string
    add_column :users, :addres, :string
    add_reference :users, :type, index: true, foreign_key: true
    add_reference :users, :city, index: true, foreign_key: true        
  end
end
