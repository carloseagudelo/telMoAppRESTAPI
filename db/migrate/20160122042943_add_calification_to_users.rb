class AddCalificationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :calification, :integer
  end
end
