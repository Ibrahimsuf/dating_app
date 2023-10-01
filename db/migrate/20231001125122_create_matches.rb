class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.timestamps
      t.integer :user_1_id
      t.integer :user_2_id

    end
    add_foreign_key :matches, :users, column: :user_1_id
    add_foreign_key :matches, :users, column: :user_2_id
  end
end
