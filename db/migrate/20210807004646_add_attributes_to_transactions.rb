class AddAttributesToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :type, :string, null: false, default: "INCOME"
    add_column :transactions, :amount, :decimal, null: false, default: 0
  end
end
