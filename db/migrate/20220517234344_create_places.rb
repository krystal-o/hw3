class CreatePlaces < ActiveRecord::Migration[7.0]
    def change
      create_table :places do |t|
        t.string "name"
        t.datetime "created_at", precision: 6, null: false
        t.datetime "updated_at", precision: 6, null: false
      end
    end
  end