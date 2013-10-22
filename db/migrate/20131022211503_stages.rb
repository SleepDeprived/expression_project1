class Stages < ActiveRecord::Migration
  def up
    create_table :stages do |t|
      t.string :name
      t.string :time_range
      t.integer :order
  end

  def down
    drop_table :stages
  end
end
