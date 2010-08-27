class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.column :question, :string
      t.column :correct, :string
      t.column :rate, :string
      t.column :quizzes_id, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end

