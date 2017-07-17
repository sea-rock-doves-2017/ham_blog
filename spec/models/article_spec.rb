require 'rails_helper'

describe Article do
  it 'belongs to a user'
  context 'validations' do
    let(:invalid_article) {Article.new}
    let(:article) {Article.new(title: 'ham', body: 'not as funny as it once was')}
    it 'is valid with a title' do
      expect(article).to be_valid
    end
    it 'is invalid without a title' do
      expect(invalid_article).to_not be_valid
    end
    it 'validates presence of body'
  end
end
