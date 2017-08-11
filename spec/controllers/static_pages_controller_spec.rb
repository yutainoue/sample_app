require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  let(:base_title) { 'Ruby on Rails Tutorial Sample App' }

  describe 'home' do
    before { get :home }

    it '表示に成功する' do
      assert_select 'title', "Home | #{base_title}"
      expect(response).to have_http_status(:success)
    end
  end

  describe 'help' do
    before { get :help }

    it '表示に成功する' do
      expect(response).to have_http_status(:success)
      assert_select 'title', "Help | #{base_title}"
    end
  end

  describe 'about' do
    before { get :about }

    it '表示に成功する' do
      expect(response).to have_http_status(:success)
      assert_select 'title', "About | #{base_title}"
    end
  end
end
