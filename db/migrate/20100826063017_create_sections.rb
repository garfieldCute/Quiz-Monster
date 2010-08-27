class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
      t.column :section, :string
      t.column :courses_id, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :sections
  end
end
