class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.column :courseCode, :string
      t.column :courseName, :string
      t.column :courseDescription, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end