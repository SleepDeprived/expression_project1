class ExpressionProfiles < ActiveRecord::Migration
  def up
    create_table :expression_profiles do |t|
      t.integer      :gal4_line_id
      t.integer      :start_stage_id
      t.integer      :end_stage_id
      t.string       :assessed_by
      t.timestamps
    end
  end

  def down
    drop_table :expression_profiles
  end
end
