class CreateStudentAnswers < ActiveRecord::Migration
  def self.up
    create_table :student_answers do |t|
      t.column :questions_id, :string
      t.column :answer, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :student_answers
  end
end
