class CreateRankings < ActiveRecord::Migration
  def self.up
    create_table :rankings do |t|
      t.integer :rankable_id
      t.string :rankable_type

      t.integer :criterion_id
      
      t.integer :rank
      t.float :score

      t.timestamps
    end
  end

  def self.down
    drop_table :rankings
  end
end
