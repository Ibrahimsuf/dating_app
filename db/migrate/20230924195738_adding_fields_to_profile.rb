class AddingFieldsToProfile < ActiveRecord::Migration[7.0]
  def change
    add_column :profiles, :bio, :text, default: nil
  end
end
