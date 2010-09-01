class CreateIdentifications < ActiveRecord::Migration
  def self.up
    create_table :identifications do |t|
      t.text :question
      t.string :answer
      t.string :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :identifications
  end
end
