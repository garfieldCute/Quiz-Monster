class CreateEssays < ActiveRecord::Migration
  def self.up
    create_table :essays do |t|
      t.text :question
      t.text :answer
      t.string :rate

      t.timestamps
    end
  end

  def self.down
    drop_table :essays
  end
end
