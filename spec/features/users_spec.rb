require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  describe 'ユーザ登録' do
    describe '失敗' do
      let(:submit) { 'Create my account' }

      before {
        visit signup_path
        fill_in 'Name',         with: ''
        fill_in 'Email',        with: 'user@example.com'
        fill_in 'Password',     with: 'foobar'
        fill_in 'Confirmation', with: 'foobar'
        click_button 'Create my account'
      }

      it 'ユーザ登録画面が再表示される' do
        expect(page.text).to have_content('サインアップ')
      end

      it 'ユーザ登録画面が再表示される' do
        expect(page.text).to have_content("Name can't be blank")
      end
    end
  end
end
