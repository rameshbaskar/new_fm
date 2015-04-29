class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
      t.string :currency_code
      t.string :currency_name

      t.timestamps
    end
  end
end
