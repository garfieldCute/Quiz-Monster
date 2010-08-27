class CreateChoices < ActiveRecord::Migration
  def self.up
    create_table :choices do |t|
      t.column :questions_id, :string
      t.column :choice, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :choices
  end
end
