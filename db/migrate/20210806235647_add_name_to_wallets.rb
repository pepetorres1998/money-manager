class AddNameToWallets < ActiveRecord::Migration[6.1]
  def change
    add_column :wallets, :name, :string, null: false
  end
end
