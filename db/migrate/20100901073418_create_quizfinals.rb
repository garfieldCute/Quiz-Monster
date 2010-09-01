class CreateQuizfinals < ActiveRecord::Migration
  def self.up
    create_table :quizfinals do |t|
      t.string :quiztype
      t.string :faculty
      t.string :section
      t.string :timer
      t.string :startdate
      t.string :enddate

      t.timestamps
    end
  end

  def self.down
    drop_table :quizfinals
  end
end
