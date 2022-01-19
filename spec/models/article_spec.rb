require 'rails_helper'

RSpec.describe Article, type: :model do  
  describe 'validations' do
    let!(:article) { create(:article) }
    context 'when article is valid' do
      it 'return a valid article' do  
        expect(article).to be_valid
      end
    end
  end
end
