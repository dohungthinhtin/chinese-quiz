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

ActiveRecord::Schema.define(version: 2020_06_10_091819) do

  create_table "assessment_answers", force: :cascade do |t|
    t.string "letter"
    t.string "answer"
    t.boolean "correct"
    t.integer "question_id"
    t.integer "assessment_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessment_id"], name: "index_assessment_answers_on_assessment_id"
    t.index ["question_id"], name: "index_assessment_answers_on_question_id"
    t.index ["user_id"], name: "index_assessment_answers_on_user_id"
  end

  create_table "assessment_options", force: :cascade do |t|
    t.string "letter"
    t.string "answer"
    t.integer "assessment_question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessment_question_id"], name: "index_assessment_options_on_assessment_question_id"
  end

  create_table "assessments", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "assessments_and_questions", id: false, force: :cascade do |t|
    t.integer "assessment_id"
    t.integer "question_id"
    t.index ["assessment_id"], name: "index_assessments_and_questions_on_assessment_id"
    t.index ["question_id"], name: "index_assessments_and_questions_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.boolean "active"
    t.integer "order"
    t.string "level"
    t.string "question"
    t.string "letter"
    t.string "answer"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
