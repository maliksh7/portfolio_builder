# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_23_153347) do
  create_table "abouts", force: :cascade do |t|
    t.text "about_me"
    t.date "birthday"
    t.integer "age"
    t.string "website"
    t.string "degree"
    t.integer "phone"
    t.string "email"
    t.string "city"
    t.string "freelance"
    t.text "add_more"
    t.text "fact_info"
    t.integer "clients"
    t.integer "projects"
    t.integer "hours_of_support"
    t.integer "awards"
    t.text "skill_description"
    t.integer "HTML"
    t.integer "CSS"
    t.integer "JAVASCRIPT"
    t.integer "PHP"
    t.integer "WORDPRESS"
    t.integer "PHOTOSHOP"
    t.integer "admin_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_abouts_on_admin_user_id"
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource"
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.text "subject"
    t.text "message"
    t.integer "admin_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_contacts_on_admin_user_id"
  end

  create_table "portfolios", force: :cascade do |t|
    t.text "info"
    t.integer "admin_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_portfolios_on_admin_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "designation"
    t.string "twitter"
    t.string "facebook"
    t.string "instagram"
    t.string "skype"
    t.string "linkedin"
    t.integer "admin_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_profiles_on_admin_user_id"
  end

  create_table "resumes", force: :cascade do |t|
    t.string "degree_title"
    t.string "institute"
    t.text "details"
    t.string "role_title"
    t.string "company"
    t.text "description"
    t.integer "admin_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "badge"
    t.string "duration"
    t.index ["admin_user_id"], name: "index_resumes_on_admin_user_id"
  end

  create_table "services", force: :cascade do |t|
    t.text "service_info"
    t.string "title"
    t.text "description"
    t.integer "admin_user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admin_user_id"], name: "index_services_on_admin_user_id"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "name"
    t.string "role"
    t.text "quote"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_user_id", null: false
    t.index ["admin_user_id"], name: "index_testimonials_on_admin_user_id"
  end

  add_foreign_key "abouts", "admin_users"
  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "contacts", "admin_users"
  add_foreign_key "portfolios", "admin_users"
  add_foreign_key "profiles", "admin_users"
  add_foreign_key "resumes", "admin_users"
  add_foreign_key "services", "admin_users"
  add_foreign_key "testimonials", "admin_users"
end
