# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:articles) }
  end

  describe 'validations' do
    subject { build(:user) }
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:email) }
  end
end
