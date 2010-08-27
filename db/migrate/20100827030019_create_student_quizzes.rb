class CreateStudentQuizzes < ActiveRecord::Migration
  def self.up
    create_table :student_quizzes do |t|
      t.column :quizzes_id, :string
      t.column :time, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :student_quizzes
  end
end
