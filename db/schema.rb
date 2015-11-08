ActiveRecord::Schema.define(version: 20151107200026) do

  create_table "landings", force: :cascade do |t|
    t.string   "category"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
