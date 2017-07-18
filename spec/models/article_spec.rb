require 'rails_helper'

describe Article do
  it 'belongs to a user'
  context 'validations' do
    let(:no_body) {Article.new(title: 'yup')}
    let(:no_title) {Article.new(body: 'woo')}
    let(:article) {Article.new(title: 'ham', body: 'not as funny as it once was')}
    it 'is valid with a title' do
      expect(article).to be_valid
    end
    it 'is invalid without a title' do
      expect(no_title).to_not be_valid
    end
    it 'is valid with a body' do
      expect(article).to be_valid
    end
    it 'is invalid without a body' do
      expect(no_body).to_not be_valid
    end
  end
end
