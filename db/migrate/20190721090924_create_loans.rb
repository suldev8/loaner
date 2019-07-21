class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :status
      t.integer :borrower_id
      t.integer :item_id

      t.timestamps
    end
  end
end
