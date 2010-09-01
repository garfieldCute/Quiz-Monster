# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100901081244) do

  create_table "admins", :force => true do |t|
    t.string   "admin_username"
    t.string   "admin_password"
    t.string   "admin_firstname"
    t.string   "admin_lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "choices", :force => true do |t|
    t.string   "questions_id"
    t.string   "choice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "courseCode"
    t.string   "courseName"
    t.string   "courseDescription"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", :force => true do |t|
    t.string   "faculty_username"
    t.string   "faculty_password"
    t.string   "faculty_firstname"
    t.string   "faculty_lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "join_sections", :force => true do |t|
    t.string   "students_id"
    t.string   "sections_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "multiplechoices", :force => true do |t|
    t.text     "question"
    t.text     "choice1"
    t.text     "choice2"
    t.text     "choice3"
    t.text     "choice4"
    t.integer  "correctChoice"
    t.text     "rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", :force => true do |t|
    t.string   "date"
    t.string   "section"
    t.string   "quizzes_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.string   "question"
    t.string   "correct"
    t.string   "rate"
    t.string   "quizzes_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizfinals", :force => true do |t|
    t.string   "quiztype"
    t.string   "faculty"
    t.string   "section"
    t.string   "timer"
    t.string   "startdate"
    t.string   "enddate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzes", :force => true do |t|
    t.string   "quizType"
    t.string   "faculties_id"
    t.string   "sections_id"
    t.string   "timer"
    t.string   "startDate"
    t.string   "endDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quizzs", :force => true do |t|
    t.string   "name"
    t.string   "course"
    t.string   "section"
    t.integer  "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "section"
    t.string   "courses_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_answers", :force => true do |t|
    t.string   "questions_id"
    t.string   "answer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_grades", :force => true do |t|
    t.string   "student"
    t.string   "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_quizzes", :force => true do |t|
    t.string   "quizzes_id"
    t.string   "time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "stud_username"
    t.string   "stud_password"
    t.string   "stud_firstname"
    t.string   "stud_lastname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "trueorfalses", :force => true do |t|
    t.text     "question"
    t.string   "answer"
    t.string   "rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
