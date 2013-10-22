class Gal4Lines < ActiveRecord::Migration

  def up
    create_table :gal4_lines do |t|
      t.string :name
      t.integer :integer
      t.string :p_element_backbone
      t.string :gene
      t.string :ch_location
      t.integer :copynumber
    end
  end

  def down
    drop_table :gal4_lines
  end
end
