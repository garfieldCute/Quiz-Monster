class CreateMulanswers < ActiveRecord::Migration
  def self.up
    create_table :mulanswers do |t|
      t.text :question
      t.text :ans1
      t.text :ans2
      t.text :ans3
      t.text :ans4
      t.string :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :mulanswers
  end
end
