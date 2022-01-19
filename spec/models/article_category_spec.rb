require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { is_expected.to belong_to(:user) }
  end

  describe 'validations' do
    subject { build(:article) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:description) }
  end
end
