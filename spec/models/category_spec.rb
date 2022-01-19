require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { is_expected.to have_many(:article_categories) }
    it { is_expected.to have_many(:articles) }
  end

  describe 'validations' do
    subject { build(:category) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_presence_of(:name) }
  end
end
