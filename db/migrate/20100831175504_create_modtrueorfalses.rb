class CreateModtrueorfalses < ActiveRecord::Migration
  def self.up
    create_table :modtrueorfalses do |t|
      t.text :question
      t.text :true
      t.text :false
      t.text :correction
      t.integer :correctAns
      t.text :correctText
      t.text :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :modtrueorfalses
  end
end
