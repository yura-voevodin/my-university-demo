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

ActiveRecord::Schema.define(version: 2020_06_10_114003) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "classrooms", force: :cascade do |t|
    t.string "name"
    t.string "lowercase_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.string "slug_en"
    t.string "slug_uk"
    t.index ["slug"], name: "index_classrooms_on_slug"
    t.index ["slug_en"], name: "index_classrooms_on_slug_en"
    t.index ["slug_uk"], name: "index_classrooms_on_slug_uk"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "disciplines_classrooms", id: false, force: :cascade do |t|
    t.integer "discipline_id"
    t.integer "classroom_id"
    t.index ["classroom_id"], name: "index_disciplines_classrooms_on_classroom_id"
    t.index ["discipline_id"], name: "index_disciplines_classrooms_on_discipline_id"
  end

  create_table "disciplines_groups", id: false, force: :cascade do |t|
    t.integer "discipline_id"
    t.integer "group_id"
    t.index ["discipline_id"], name: "index_disciplines_groups_on_discipline_id"
    t.index ["group_id"], name: "index_disciplines_groups_on_group_id"
  end

  create_table "disciplines_teachers", id: false, force: :cascade do |t|
    t.integer "discipline_id"
    t.integer "teacher_id"
    t.index ["discipline_id"], name: "index_disciplines_teachers_on_discipline_id"
    t.index ["teacher_id"], name: "index_disciplines_teachers_on_teacher_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "lowercase_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.string "slug_en"
    t.string "slug_uk"
    t.index ["slug"], name: "index_groups_on_slug"
    t.index ["slug_en"], name: "index_groups_on_slug_en"
    t.index ["slug_uk"], name: "index_groups_on_slug_uk"
  end

  create_table "groups_records", id: false, force: :cascade do |t|
    t.integer "group_id"
    t.integer "record_id"
    t.index ["group_id"], name: "index_groups_records_on_group_id"
    t.index ["record_id"], name: "index_groups_records_on_record_id"
  end

  create_table "records", force: :cascade do |t|
    t.datetime "start_date"
    t.integer "classroom_id"
    t.integer "discipline_id"
    t.integer "teacher_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["classroom_id"], name: "index_records_on_classroom_id"
    t.index ["discipline_id"], name: "index_records_on_discipline_id"
    t.index ["teacher_id"], name: "index_records_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "lowercase_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "slug"
    t.string "slug_en"
    t.string "slug_uk"
    t.index ["slug"], name: "index_teachers_on_slug"
    t.index ["slug_en"], name: "index_teachers_on_slug_en"
    t.index ["slug_uk"], name: "index_teachers_on_slug_uk"
  end

end
