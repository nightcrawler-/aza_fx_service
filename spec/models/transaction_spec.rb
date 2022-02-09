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
require 'rails_helper'

RSpec.describe Transaction, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
