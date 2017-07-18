require 'rails_helper'

describe ArticlesController do
  let!(:article) {Article.create(title: 'test database!', body: 'A necessary and wonderful database')}
  describe '#index' do
    before(:each) do
      get :index
    end
    it 'assigns the @articles variable' do
      expect(assigns[:articles]).to eq(Article.all)
    end
    it 'responds with a status of 200' do
      expect(response.status).to eq(200)
    end
  end
  describe '#show' do
    it 'responds with a status of 200' do
      get :show, params: {id: article.id}
      expect(response.status).to eq(200)
    end
    it 'assigns the @article instance variable' do
      get :show, params: {id: article.id}
      expect(assigns[:article]).to eq(article)
    end
  end
  describe '#new' do
  end
  describe '#edit' do
  end
  xdescribe '#update' do
    it 'updates an article in the database' do
      put :update, params: {id: article.id}

    end
  end
  describe '#delete' do
  end
end
