class ChangeEventsReferncesToSearchs < ActiveRecord::Migration
  def self.up
    remove_column :events, :user_id
    remove_reference :events, :user_id
    references :events, :searches, index: true
  end
end
