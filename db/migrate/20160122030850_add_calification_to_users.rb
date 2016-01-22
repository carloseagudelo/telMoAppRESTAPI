class AddCalificationToUsers < ActiveRecord::Migration
  def change
    add_column :users, :calification, :integer, :default => 0
  end
end
