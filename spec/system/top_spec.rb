# frozen_string_literal: true

require 'rails_helper'

describe 'top画面のテスト' do
  describe 'トップ画面(root_path)のテスト' do
    before do
      visit root_path
    end
    context '表示の確認' do
      it 'トップ画面(root_path)に他ページのリンクが存在するか' do
        expect(page).to have_link 'About'
      end
    end
  end
end