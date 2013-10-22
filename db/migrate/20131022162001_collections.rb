class Collections < ActiveRecord::Migration
  def up
    create_table :collections do |t|
      t.string :name
      t.integer :gal4_line_id
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :collections
  end
end
