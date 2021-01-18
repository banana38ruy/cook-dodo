require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
end

  describe '新規登録/ユーザー情報' do
    context '新規登録できる時' do
      it 'passwordとpassword_confirmation(英数交えた6文字以上)とemailとnickname,が
      記入できてあれば登録できる' do
          expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("ニックネームを入力してください")
      end
      it 'emailが空では登録できない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールを入力してください")
      end
      it 'passwordが空では登録できない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードを入力してください")
      end
      it 'passwordが全角では登録できない' do
        @user.password = "２８２８ＯＹＡＺＩ"
        @user.password_confirmation = "２８２８ＯＹＡＺＩ"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードには英字と数字の両方を含めて設定してください")
      end
      it 'passwordが存在してもpassword_confirmationが空では登録できない' do
        @user.password_confirmation = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）を入力してください")
      end
      it 'passwordが存在してもpassword_confirmationの値が違えば登録できない' do
        @user.password = "1234ab"
        @user.password_confirmation = "tosio45"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
      end
      it '重複したemailが存在する場合登録できない' do
        @user.save
        another_user = FactoryBot.build(:user)
        another_user.email = @user.email
        another_user.valid?
        expect(another_user.errors.full_messages).to include("Eメールはすでに存在します")
      end
      it 'emailに＠がふくまれてなければ登録できない' do
        @user.email = "123reregrerf"
        @user.valid?
        expect(@user.errors.full_messages).to include("Eメールは不正な値です")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = "23yui"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードは6文字以上で入力してください")
      end
      it 'passwordが半角英字のみでは登録できない' do
        @user.password = "rosinante"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードには英字と数字の両方を含めて設定してください")
      end
      it 'passwordが半角数字のみでは登録できない' do
        @user.password = "777777"
        @user.valid?
        expect(@user.errors.full_messages).to include("パスワードには英字と数字の両方を含めて設定してください")
      end   
    end
  
    describe 'ログイン/ユーザー情報' do
      context 'ログインできる時' do
        it '登録したemailとpasswordを記入できてあればログインできる' do
            expect(@user).to be_valid
        end
      end
      context 'ログインできないとき' do
        it 'emailが空ではログインできない' do
          @user.email = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("Eメールを入力してください")
        end
        it 'passwordが空ではログインできない' do
          @user.password = nil
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワードを入力してください")
        end
        it '登録したemailに対してパスワードが違えばログインできない' do
          @user.password = "123abc"
          @user.valid?
          expect(@user.errors.full_messages).to include("パスワード（確認用）とパスワードの入力が一致しません")
        end
      end
  
  
  
  
  
  
  
  
  
  
  
  end
end
end