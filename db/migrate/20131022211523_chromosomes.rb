class Chromosomes < ActiveRecord::Migration
  def up
    create_table :chromosomes do |t|
      t.string :location
      t.integer :gal4_line_id
  end

  def down
  end
end
