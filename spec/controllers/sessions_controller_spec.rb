require 'rails_helper'

describe SessionsController do
  let(:user) { FactoryGirl.create :user }
  describe '#create' do
    context 'on valid params' do
      it 'responds with a status of 302' do
        post :create, params: { name: user.name, password_hash: user.password_hash}
        expect(response.status).to eq 302
      end
      it 'sets the session id to the user id' do
        post :create, params: { name: user.name, password_hash: user.password_hash}
        expect(session[:user_id]).to eq user.id
      end
    end
    context 'on invalid params' do
      it 'responds with a status of 401'
      it 'does not set the session id to the user id'
    end
  end
  describe '#new' do
  end
  describe '#destroy' do
    before(:each) do
      session[:user_id] = user.id
      delete :destroy, params: {id: session[:user_id]}
    end
    it 'responds with a status of 302' do
      expect(response.status).to eq 302
    end
    it 'clears the session' do
      expect(session[:user_id]).to be_nil
    end
  end
end
