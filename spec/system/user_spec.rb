# frozen_string_literal: true

require 'rails_helper'

describe "マイページのテスト" do
  before do
    visit user_path(user)
  end

  context "表示の確認" do
    it "編集リンクが存在するか" do
      expect(page).to have_link "マイページ編集"
    end
    it "スコア削除リンクが存在するか" do
      expect(page).to have_link "消去"
    end
  end

  context "リンク遷移先の確認" do
    it "マイページ編集のリンクが編集画面か" do
      edit_link = find("a")[0]
      edit_link.click
      expect(current_path).to eq('/user/' + uaer.id.to_s)
    end
  end

  context "スコアの消去のテスト" do
    it "スコアの消去" do
      expect { score.destroy }.to change(Score, :count).by(-1)
    end
  end
end
