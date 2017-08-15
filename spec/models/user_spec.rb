require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'new' do
    describe '有効なuser' do
      it '有効なuser' do
        user = User.new(name: 'Example User', email: 'user@example.com')
        expect(user).to be_valid
      end

      it 'emailは小文字に変換されて保存される' do
        user = User.new(name: 'Example User', email: 'HOGE@example.com')
        user.save
        expect(User.find(user.id).email).to eq 'hoge@example.com'
      end
    end

    describe '無効なuser' do
      it '名前が空の場合は無効' do
        user = User.new(name: '', email: 'user@example.com')
        expect(user).to_not be_valid
      end

      it '名前が50字以上の場合は無効' do
        user = User.new(name: 'A' * 51, email: 'user@example.com')
        expect(user).to_not be_valid
      end

      it 'emailが空の場合は無効' do
        user = User.new(name: 'Example User', email: '')
        expect(user).to_not be_valid
      end

      it 'emailが100字以上の場合は無効' do
        user = User.new(name: 'Example User', email: 'A' * 100 + '@exmple.com')
        expect(user).to_not be_valid
      end

      it 'emailにカンマが含まれている場合は無効' do
        user = User.new(name: 'Example User', email: 'user@example,com')
        expect(user).to_not be_valid
      end

      it 'emailが別userによって既に使われている場合は無効' do
        user = User.new(name: 'Example User', email: 'user@example.com')
        duplicate_user = user.dup

        # emailアドレスは大文字小文字が区別されないため
        duplicate_user.email = user.email.upcase
        user.save
        expect(duplicate_user).to_not be_valid
      end
    end
  end
end
