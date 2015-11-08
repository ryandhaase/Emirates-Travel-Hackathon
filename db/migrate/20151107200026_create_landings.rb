class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.string :category
      t.string :start_date
      t.string :end_date
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
