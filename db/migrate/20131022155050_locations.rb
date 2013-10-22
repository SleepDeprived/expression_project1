class Locations < ActiveRecord::Migration
  def up
    create_table :locations do |t|
      t.string :name
      t.timestamps
  end

  def down
    drop_table :locations
  end
end
