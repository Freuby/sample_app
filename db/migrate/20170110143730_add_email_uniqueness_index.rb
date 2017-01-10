class AddEmailUniquenessIndex < ActiveRecord::Migration[5.0]
  def change
  end
  
  def self.up
    add_index :users, :email, :unique => true
  end

  def self.down
    remove_index :users, :email
  end
end
