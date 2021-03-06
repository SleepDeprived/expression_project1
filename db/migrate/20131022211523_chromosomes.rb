class Chromosomes < ActiveRecord::Migration
  def up
    create_table :chromosomes do |t|
      t.string :location
      t.integer :gal4_line_id
      t.timestamps
    end
  end

  def down
    drop_table :chromosomes
  end
end
