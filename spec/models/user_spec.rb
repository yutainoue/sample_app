require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'new' do
    describe '有効なuser' do
      it '有効なuser' do
        user = User.new(name: 'Example User', email: 'user@example.com',
                        password: 'foobar', password_confirmation: 'foobar')
        expect(user).to be_valid
      end

      it 'emailは小文字に変換されて保存される' do
        user = User.new(name: 'Example User', email: 'HOGE@example.com',
                        password: 'foobar', password_confirmation: 'foobar')
        user.save
        expect(User.find(user.id).email).to_not eq 'hoge@example.com'
      end

      it 'パスワードが6文字以上なら有効' do
        user = User.new(name: 'Example User', email: 'user@example.com',
                        password: 'a' * 6, password_confirmation: 'a' * 6)
        expect(user).to be_valid
      end
    end

    describe '無効なuser' do
      it '名前が空の場合は無効' do
        user = User.new(name: '', email: 'user@example.com',
                        password: 'foobar', password_confirmation: 'foobar')
        expect(user).to_not be_valid
      end

      it '名前が50字以上の場合は無効' do
        user = User.new(name: 'A' * 51, email: 'user@example.com',
                        password: 'foobar', password_confirmation: 'foobar')
        expect(user).to_not be_valid
      end

      it 'emailが空の場合は無効' do
        user = User.new(name: 'Example User', email: '',
                        password: 'foobar', password_confirmation: 'foobar')
        expect(user).to_not be_valid
      end

      it 'emailが100字以上の場合は無効' do
        user = User.new(name: 'Example User', email: 'A' * 100 + '@exmple.com',
                        password: 'foobar', password_confirmation: 'foobar')
        expect(user).to_not be_valid
      end

      it 'emailにカンマが含まれている場合は無効' do
        user = User.new(name: 'Example User', email: 'user@example,com',
                        password: 'foobar', password_confirmation: 'foobar')
        expect(user).to_not be_valid
      end

      it 'emailが別userによって既に使われている場合は無効' do
        user = User.new(name: 'Example User', email: 'user@example.com',
                        password: 'foobar', password_confirmation: 'foobar')
        duplicate_user = user.dup

        # emailアドレスは大文字小文字が区別されないため
        duplicate_user.email = user.email.upcase
        user.save
        expect(duplicate_user).to_not be_valid
      end

      it 'パスワードが違う場合は無効' do
        user = User.new(name: 'Example User', email: 'user@example.com',
                        password: 'foobar', password_confirmation: 'hogehoge')
        expect(user).to_not be_valid
      end

      it 'パスワードが5文字以下の場合は無効' do
        user = User.new(name: 'Example User', email: 'user@example.com',
                        password: 'a' * 5, password_confirmation: 'a' * 5)
        expect(user).to_not be_valid
      end
    end
  end
end
