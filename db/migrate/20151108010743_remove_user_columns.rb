class RemoveUserColumns < ActiveRecord::Migration
  def self.up
    remove_column :users, :search
    remove_column :users, :start
    remove_column :users, :end
    remove_column :users, :city
    remove_column :users, :state
    remove_column :users, :country
  end

  def self.down
    add_column :users, :search, :string
    add_column :users, :start, :date
    add_column :users, :end, :date
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :country, :string
  end
end
