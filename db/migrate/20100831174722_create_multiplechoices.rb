class CreateMultiplechoices < ActiveRecord::Migration
  def self.up
    create_table :multiplechoices do |t|
      t.text :question
      t.text :choice1
      t.text :choice2
      t.text :choice3
      t.text :choice4
      t.integer :correctChoice
      t.text :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :multiplechoices
  end
end
