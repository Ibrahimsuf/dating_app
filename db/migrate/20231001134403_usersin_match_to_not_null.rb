class UsersinMatchToNotNull < ActiveRecord::Migration[7.0]
  def change
    change_column :matches, :user_1_id, :integer, null: false
    change_column :matches, :user_2_id, :integer, null: false
  end
end
