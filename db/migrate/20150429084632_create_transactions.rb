class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :description
      t.date :transaction_date
      t.decimal :amount, precision: 8, scale: 2
      t.integer :user_id
      t.integer :category_id
      t.integer :currency_id

      t.timestamps
    end
  end
end
