class CreateTrueorfalses < ActiveRecord::Migration
  def self.up
    create_table :trueorfalses do |t|
      t.text :question
      t.string :answer
      t.string :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :trueorfalses
  end
end
