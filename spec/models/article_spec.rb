require 'rails_helper'

RSpec.describe Article, type: :model do  
  describe 'validations' do
    context 'when article is valid' do
      let!(:article) { create(:article) }
      it 'return a valid article' do  
        expect(article).to be_valid
      end
    end

    context 'when article is invalid' do
      let!(:article) { build(:article, title: nil, description: nil, user: nil)}
      it 'reise error when article title is empy' do
        expect(article).to have(1).error_on(:title)
      end
      it 'reise error when article description is empy' do
        expect(article).to have(1).error_on(:description)
      end
      it 'reise error when article user is empy' do
        expect(article).to have(1).error_on(:user)
      end
    end
  end
end
