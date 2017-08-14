require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe 'home' do
    before { get :new }

    it '表示に成功する' do
      expect(response).to have_http_status(:success)
    end
  end
end
