require 'rails_helper'

RSpec.feature 'Users', type: :feature do
  describe 'ユーザ登録' do
    let(:submit) { 'Create my account' }

    describe '成功' do
      before {
        visit signup_path
        fill_in 'Name',         with: 'user'
        fill_in 'Email',        with: 'user@example.com'
        fill_in 'Password',     with: 'foobar'
        fill_in 'Confirmation', with: 'foobar'
        click_button 'Create my account'
      }

      it 'ユーザ詳細画面が再表示される' do
        expect(page.text).to have_content('user')
        expect(page.text).to have_content('会員登録おめでとうー')
      end
    end

    describe '失敗' do
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

      it 'エラー理由が表示される' do
        expect(page.text).to have_content("Name can't be blank")
      end
    end
  end
end
