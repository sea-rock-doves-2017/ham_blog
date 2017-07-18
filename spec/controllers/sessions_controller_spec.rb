require 'rails_helper'

describe SessionsController do
  let(:user) { FactoryGirl.create :user }
  describe '#create' do
    context 'on valid params' do
      it 'responds with a status of 302' do
        post :create, params: { name: user.name, password_hash: user.password_hash}
        expect(response.status).to eq 302
      end
      it 'sets the session id to the user id'
    end
    context 'on invalid params' do
      it 'responds with a status of 401'
      it 'does not set the session id to the user id'
    end
  end
  describe '#new' do
  end
  describe '#delete' do

  end
end
