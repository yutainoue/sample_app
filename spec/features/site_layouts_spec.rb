require 'rails_helper'

RSpec.feature 'SiteLayouts', type: :feature do
  describe 'home' do
    before { visit root_path }

    it 'ロゴのリンクが有効になっている' do
      click_link 'sample app'
      expect(page.text).to have_content('ホーム')
    end

    it 'Homeリンクが有効になっている' do
      click_link 'Home'
      expect(page.text).to have_content('ホーム')
    end

    it 'Helpリンクが有効になっている' do
      click_link 'Help'
      expect(page.text).to have_content('ヘルプ')
    end

    it 'Aboutリンクが有効になっている' do
      click_link 'About'
      expect(page.text).to have_content('アバウト')
    end

    it 'Contactリンクが有効になっている' do
      click_link 'Contact'
      expect(page.text).to have_content('コンタクト')
    end

    it 'Sign upリンクが有効になっている' do
      click_link 'Sign up now!'
      expect(page.text).to have_content('サインアップ')
    end
  end
end
