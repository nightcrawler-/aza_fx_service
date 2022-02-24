# frozen_string_literal: true

class AddStatusToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :status, :string
  end
end
