class CreateStudentGrades < ActiveRecord::Migration
  def self.up
    create_table :student_grades do |t|
      t.column :student, :string
      t.column :grade, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :student_grades
  end
end
