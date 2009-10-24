class CreateChoices < ActiveRecord::Migration
  def self.up
    create_table :choices do |t|
      t.integer :rankable_1_id
      t.string :rankable_1_type

      t.integer :rankable_2_id
      t.string :rankable_2_type

      t.integer :winner_id
      t.string :winner_type

      t.timestamps
    end
  end

  def self.down
    drop_table :choices
  end
end
