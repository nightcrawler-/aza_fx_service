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
  subject do
    described_class.new
  end

  describe 'Validations' do
    it { expect(subject).to validate_presence_of(:input_amount) }
    it { expect(subject).to validate_presence_of(:input_currency) }
    it { expect(subject).to validate_presence_of(:output_amount) }
    it { expect(subject).to validate_presence_of(:output_currency) }
    it { expect(subject).to validate_presence_of(:transacted_at) }
    it { expect(subject).to validate_presence_of(:customer) }

    it { expect(subject).to validate_numericality_of(:input_amount).is_greater_than(0) }
    it { expect(subject).to validate_numericality_of(:output_amount).is_greater_than(0) }

    it { should validate_inclusion_of(:input_currency).in_array(%w[EUR USD KES INR]) }
    it { should validate_inclusion_of(:output_currency).in_array(%w[EUR USD KES INR]) }
  end

  describe 'Associations' do
    it { expect(subject).to belong_to(:customer) }
  end
end
