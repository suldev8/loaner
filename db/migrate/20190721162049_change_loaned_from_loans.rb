class ChangeLoanedFromLoans < ActiveRecord::Migration[5.2]
  def change
    change_column :items, :loaned, :boolean, default: false
  end
end
