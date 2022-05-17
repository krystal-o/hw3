class Post < ApplicationRecord
  def change
    create_table "posts", force: :cascade do |t|
      t.string "title"
      t.text "description"
      t.date "posted_on"
      t.integer "place_id"
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
    end
  end# talks to the "posts" table
end
