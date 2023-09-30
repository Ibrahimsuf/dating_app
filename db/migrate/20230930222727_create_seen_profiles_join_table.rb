class CreateSeenProfilesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :profiles, table_name: :seen_profiles do |t|
      t.index [:user_id, :profile_id]
    end
  end
end
