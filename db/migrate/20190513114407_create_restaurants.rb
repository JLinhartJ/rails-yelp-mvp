class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string "name"
      t.string "address"
      t.string "phone_number"
      t.string "category"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "reviews", force: :cascade do |t|
      t.text "content"
      t.integer "rating"
      t.integer "restaurant_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
    end
  end
end
