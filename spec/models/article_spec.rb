require 'rails_helper'

describe Article do
  it 'belongs to a user'
  context 'validations' do
    it 'validates presence of title'
    it 'validates presence of body'
  end
end
