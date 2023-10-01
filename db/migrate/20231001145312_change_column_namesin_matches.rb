class ChangeColumnNamesinMatches < ActiveRecord::Migration[7.0]
  def change
    rename_column :matches, :user_1_id, :matching_user_id
    rename_column :matches, :user_2_id, :matched_with_user_id
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
