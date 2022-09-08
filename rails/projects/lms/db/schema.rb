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

ActiveRecord::Schema[7.0].define(version: 2022_09_08_054116) do
    # These are extensions that must be enabled in order to support this database
    enable_extension "plpgsql"
  
    create_table "accounts", force: :cascade do |t|
      t.string "variant"
      t.string "amount"
      t.bigint "customer_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["customer_id"], name: "index_accounts_on_customer_id", unique: true
    end
  
    create_table "appointments", force: :cascade do |t|
      t.bigint "physician_id"
      t.bigint "patient_id"
      t.datetime "appointment_date"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["patient_id"], name: "index_appointments_on_patient_id"
      t.index ["physician_id"], name: "index_appointments_on_physician_id"
    end
  
    create_table "authors", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "blogs", force: :cascade do |t|
      t.string "name"
      t.bigint "author_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "lock_version"
      t.index ["author_id"], name: "index_blogs_on_author_id"
    end
  
    create_table "books", force: :cascade do |t|
      t.string "name"
      t.string "author"
      t.integer "isbn"
      t.boolean "terms_of_service"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "comments", force: :cascade do |t|
      t.string "title"
      t.text "body"
      t.bigint "student_id", null: false
      t.bigint "blog_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["blog_id"], name: "index_comments_on_blog_id"
      t.index ["student_id"], name: "index_comments_on_student_id"
    end
  
    create_table "customers", force: :cascade do |t|
      t.string "name"
      t.string "contact"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "example_table", force: :cascade do |t|
      t.string "name"
      t.string "contact_no"
      t.integer "marks"
      t.datetime "dob"
    end
  
    create_table "issued_books", force: :cascade do |t|
      t.bigint "books_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.bigint "students_id", null: false
      t.index ["books_id"], name: "index_issued_books_on_books_id"
      t.index ["students_id"], name: "index_issued_books_on_students_id"
    end
  
    create_table "issues", id: false, force: :cascade do |t|
      t.bigint "student_id"
      t.bigint "book_id"
      t.index ["book_id"], name: "index_issues_on_book_id"
      t.index ["student_id"], name: "index_issues_on_student_id"
    end
  
    create_table "orders", force: :cascade do |t|
      t.date "date"
      t.integer "status"
      t.float "total"
      t.bigint "customer_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["customer_id"], name: "index_orders_on_customer_id"
    end
  
    create_table "patients", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "physicians", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "revert_table", force: :cascade do |t|
      t.string "my_name"
      t.string "your_name"
    end
  
    create_table "reviews", force: :cascade do |t|
      t.string "title"
      t.text "body"
      t.bigint "customers_id", null: false
      t.bigint "blogs_id", null: false
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["blogs_id"], name: "index_reviews_on_blogs_id"
      t.index ["customers_id"], name: "index_reviews_on_customers_id"
    end
  
    create_table "students", force: :cascade do |t|
      t.string "name"
      t.integer "roll_no"
      t.string "course"
      t.string "contact_no"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    create_table "temp_books", force: :cascade do |t|
      t.integer "isbn_book"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.string "book_name"
      t.index ["book_name"], name: "index_temp_books_on_book_name"
    end
  
    create_table "users", force: :cascade do |t|
      t.string "name"
      t.string "email"
      t.string "contact"
      t.boolean "status"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  
    add_foreign_key "accounts", "customers"
    add_foreign_key "blogs", "authors"
    add_foreign_key "comments", "blogs"
    add_foreign_key "comments", "students"
    add_foreign_key "issued_books", "students", column: "students_id"
    add_foreign_key "orders", "customers"
    add_foreign_key "reviews", "blogs", column: "blogs_id"
    add_foreign_key "reviews", "customers", column: "customers_id"
  end
  