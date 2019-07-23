class AddIndexToLoans < ActiveRecord::Migration[5.2]
  def change
    add_index :loans, [ :item_id, :user_id ], unique: true
  end
end
