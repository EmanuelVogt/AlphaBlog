require 'rails_helper'

RSpec.describe User, type: :model do  
  describe 'validations' do
    let!(:user) { create(:user) }
    let!(:user_two) { build(:user, username: nil, email: nil) }
    context 'when user is valid' do
      it 'with name and email' do
        expect(user).to be_valid
        expect(user).to have(0).error_on(:username)
        expect(user).to have(0).error_on(:email)
      end
      it 'without name and email' do
        expect(user_two).not_to be_valid
        expect(user_two).to have(2).error_on(:username)
        expect(user_two).to have(2).error_on(:email)
      end
    end
  end
   
  describe 'relations' do
    it 'should have many articles' do
      articles = User.reflect_on_association(:articles)
      expect(articles.macro).to eq(:has_many)
    end
  end
end
