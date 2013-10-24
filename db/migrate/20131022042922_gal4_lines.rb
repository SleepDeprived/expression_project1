class Gal4Lines < ActiveRecord::Migration

  def up
    create_table :gal4_lines do |t|
      t.string        :name
      t.integer       :version
      t.integer       :chromosome_id
      t.string        :p_element_backbone
      t.text          :regulatory_sequence
      t.string        :gene
      t.string        :gene_symbol
      t.integer       :copynumber
      t.timestamps
    end
  end

  def down
    drop_table :gal4_lines
  end
end
