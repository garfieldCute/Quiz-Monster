class CreateNotifications < ActiveRecord::Migration
  def self.up
    create_table :notifications do |t|
      t.column :date, :string
      t.column :section, :string
      t.column :quizzes_id, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :notifications
  end
end
