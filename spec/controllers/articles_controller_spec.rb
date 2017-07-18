require 'rails_helper'

describe ArticlesController do
  let!(:article) {Article.create(title: 'test database!', body: 'A necessary and wonderful database')}
  describe '#index' do
    it 'assigns the @articles variable' do
      get :index
      expect(assigns[:articles]).to eq(Article.all)
    end
  end
  describe '#update' do
    xit 'updates an article in th database' do
      put :update, params: {id: article.id}

    end
  end
end
