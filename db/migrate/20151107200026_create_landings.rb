class CreateLandings < ActiveRecord::Migration
  def change
    create_table :landings do |t|
      t.string :home

      t.timestamps null: false
    end
  end
end
