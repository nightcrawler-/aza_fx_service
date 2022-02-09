# frozen_string_literal: true

class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.bigint :customer_id
      t.decimal :input_amount, precision: 10, scale: 2
      t.decimal :output_amount, precision: 10, scale: 2
      t.string :input_currency
      t.string :output_currency
      t.date :transacted_at

      t.timestamps
    end
  end
end
