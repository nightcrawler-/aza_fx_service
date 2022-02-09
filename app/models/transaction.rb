# frozen_string_literal: true

# == Schema Information
#
# Table name: transactions
#
#  id              :bigint           not null, primary key
#  input_amount    :decimal(10, 2)
#  input_currency  :string
#  output_amount   :decimal(10, 2)
#  output_currency :string
#  transacted_at   :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  customer_id     :bigint
#
class Transaction < ApplicationRecord
  #### Associations
  belongs_to :customer

  #### Validations
  validates :input_amount, :output_amount, :input_currency, :output_currency, :transacted_at, :customer,
            presence: true
  validates :input_amount, :output_amount, numericality: { greater_than: 0 }

  # TODO: Complete set of supported currencies, possibly from a config file, db records or something, or use a gem?
  validates :input_currency, :output_currency, inclusion: { in: %w[EUR USD KES INR] }
end
