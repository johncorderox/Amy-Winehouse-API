# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_05_09_202857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.string "album_cover"
    t.string "release_date"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_albums_on_group_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.boolean "active_member"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_artists_on_group_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "website"
    t.string "press_photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.bigint "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_labels_on_group_id"
  end

  create_table "lyrics", force: :cascade do |t|
    t.text "lyric"
    t.bigint "song_id"
    t.bigint "album_id"
    t.bigint "groups_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_lyrics_on_album_id"
    t.index ["groups_id"], name: "index_lyrics_on_groups_id"
    t.index ["song_id"], name: "index_lyrics_on_song_id"
  end

  create_table "quotes", force: :cascade do |t|
    t.text "name"
    t.string "source"
    t.bigint "artist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_quotes_on_artist_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.integer "length"
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_songs_on_album_id"
  end

  add_foreign_key "albums", "groups"
  add_foreign_key "artists", "groups"
  add_foreign_key "labels", "groups"
  add_foreign_key "lyrics", "albums"
  add_foreign_key "lyrics", "groups", column: "groups_id"
  add_foreign_key "lyrics", "songs"
  add_foreign_key "quotes", "artists"
  add_foreign_key "songs", "albums"
end
