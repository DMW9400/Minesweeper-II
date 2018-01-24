
ActiveRecord::Schema.define(version: 20180122143631) do

  create_table "grids", force: :cascade do |t|
    t.integer "session_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "grid_id"
    t.integer "rounds", default: 0
    t.integer "wins", default: 0
    t.integer "losses", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spaces", force: :cascade do |t|
    t.string "location"
    t.boolean "guessed", default: false
    t.string "button_class", default: "button"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "top_players", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
