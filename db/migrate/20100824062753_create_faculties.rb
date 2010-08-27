class CreateFaculties < ActiveRecord::Migration
  def self.up
    create_table :faculties do |t|
      t.column :faculty_username, :string
      t.column :faculty_password, :string
      t.column :faculty_firstname, :string
      t.column :faculty_lastname, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :faculties
  end
end