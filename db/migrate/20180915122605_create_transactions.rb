class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :vendor
      t.string :currency
      t.float :amount
      t.float :amount_cdn
      t.string :purpose
      t.string :expense
      t.string :account_name

      t.timestamps null: false
    end

    create_table :accounts do |t|
      t.string :account_name
      t.boolean :debit_acc
      t.float :balance

      t.timestamps null: false
    end
  end
end
