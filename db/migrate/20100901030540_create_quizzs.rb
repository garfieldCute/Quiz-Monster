class CreateQuizzs < ActiveRecord::Migration
  def self.up
    create_table :quizzs do |t|
      t.string :name
      t.string :course
      t.string :section
      t.integer :time

      t.timestamps
    end
  end

  def self.down
    drop_table :quizzs
  end
end
