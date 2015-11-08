class ChangeSearchDateFormat < ActiveRecord::Migration
  def up
    change_column :searches, :start_date, :string
    change_column :searches, :end_date, :string
  end

  def down
    change_column :searches, :start_date, :date
    change_column :searches, :end_date, :date
  end
end
