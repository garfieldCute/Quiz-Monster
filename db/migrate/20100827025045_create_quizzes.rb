class CreateQuizzes < ActiveRecord::Migration
  def self.up
    create_table :quizzes do |t|
      t.column :quizType, :string
      t.column :faculties_id, :string
      t.column :sections_id, :string
      t.column :timer, :string
      t.column :startDate, :string
      t.column :endDate, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :quizzes
  end
end

