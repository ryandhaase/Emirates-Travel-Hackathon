class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.references :event, index: true

      t.timestamps null: false
    end
  end
end
