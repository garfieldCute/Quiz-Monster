class CreateJoinSections < ActiveRecord::Migration
  def self.up
    create_table :join_sections do |t|
      t.column :students_id, :string
      t.column :sections_id, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :join_sections
  end
end
