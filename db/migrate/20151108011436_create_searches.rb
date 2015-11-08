class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :category
      t.date :start_date
      t.date :end_date
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
