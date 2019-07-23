class ChangeStatusFromLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :loans, :status, :string, default: "pending"
  end
end
