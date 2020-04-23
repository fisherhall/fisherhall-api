# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_23_213726) do

  create_table "announcements", force: :cascade do |t|
    t.integer "post_id"
    t.integer "bulletin_id"
    t.text "description"
    t.integer "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "url"
    t.index ["bulletin_id"], name: "index_announcements_on_bulletin_id"
    t.index ["post_id"], name: "index_announcements_on_post_id"
  end

  create_table "attachments", force: :cascade do |t|
    t.string "key"
    t.string "url"
    t.string "attachable_type"
    t.integer "attachable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["attachable_type", "attachable_id"], name: "attachments_polymorphic_keys_index"
  end

  create_table "bulletins", force: :cascade do |t|
    t.datetime "published_at"
    t.string "name"
    t.string "description"
    t.text "service_order"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "group_id"
    t.text "sermon_notes"
    t.integer "sermon_id"
    t.index ["sermon_id"], name: "index_bulletins_on_sermon_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "banner"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string "slug"
    t.text "about"
    t.string "short_description"
    t.string "target_audience"
    t.string "meet_details"
    t.index ["slug"], name: "index_groups_on_slug", unique: true
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name", null: false
    t.string "description"
    t.string "slug", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "group_id"
    t.integer "author_id"
    t.integer "editor_id"
    t.string "slug"
    t.string "title"
    t.text "content"
    t.datetime "published_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "kind", default: 0
    t.index ["author_id"], name: "index_posts_on_author_id"
    t.index ["editor_id"], name: "index_posts_on_editor_id"
    t.index ["group_id"], name: "index_posts_on_group_id"
  end

  create_table "sermons", force: :cascade do |t|
    t.integer "group_id"
    t.string "name", null: false
    t.datetime "published_at", null: false
    t.text "notes"
    t.string "speaker", null: false
    t.string "series"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_sermons_on_group_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer "tag_id"
    t.string "taggable_type"
    t.integer "taggable_id"
    t.string "tagger_type"
    t.integer "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "bulletins", "sermons"
  add_foreign_key "sermons", "groups"
end
