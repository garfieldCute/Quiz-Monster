class CreateAdmins < ActiveRecord::Migration
  def self.up
    create_table :admins do |t|
      t.column :admin_username, :string
      t.column :admin_password, :string
      t.column :admin_firstname, :string
      t.column :admin_lastname, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :admins
  end
end
