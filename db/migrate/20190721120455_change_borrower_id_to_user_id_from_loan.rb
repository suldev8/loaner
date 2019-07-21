class ChangeBorrowerIdToUserIdFromLoan < ActiveRecord::Migration[5.2]
  def change
    remove_column :loans, :borrower_id, :integer
    add_column :loans, :user_id, :integer
  end
end
