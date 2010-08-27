class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.column :stud_username, :string
      t.column :stud_password, :string
      t.column :stud_firstname, :string
      t.column :stud_lastname, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end