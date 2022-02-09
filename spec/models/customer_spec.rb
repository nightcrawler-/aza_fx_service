# frozen_string_literal: true

# == Schema Information
#
# Table name: customers
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject do
    described_class.new
  end

  describe 'Validations' do
    it { expect(subject).to validate_presence_of(:name) }
  end

  describe 'Associations' do
    it { expect(subject).to have_many(:transactions) }
  end
end
