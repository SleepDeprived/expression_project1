class CreateExpressionProfilesLocationsJoinTable < ActiveRecord::Migration
  def up
    create_table :expression_profiles_locations, id: false do |t|
      t.integer :expression_profile_id
      t.integer :location_id
    end
  end

  def down
  end
end
