class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :search
      t.date :start
      t.date :end
      t.string :city
      t.string :state

      t.timestamps null: false
    end
  end
end
