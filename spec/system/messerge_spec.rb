# frozen_string_literal: true

require 'rails_helper'

describe "投稿のテスト" do
  let!(:messerge) { create(:messerge, comment:"hoge") } 
    
 describe "投稿画面のテスト" do
   before do
     visit messerges_path
   end
   context "表示の確認" do
     it "messerges_pathが/messerges" do
       expect(current_path).to eq("/messerges")
     end
     it "投稿ボタンが表示されているか" do
       expect(page).to have_botton"投稿"
     end
   end
   context "投稿処理のテスト" do
     it "投稿後のリダイレクト先は正しいか" do
       fill_in 'messerge[comment]', with: Faker::Lorem.characters(number:100)
       click_botton"投稿"
       expect(page).to have_current_path messerges_path(Messerge.last)
     end         
   end 
 end
 
 describe "投稿一覧のテスト" do
   before do
    visit messerges_path
   end
   context "表示の確認" do
     it "投稿されたものが表示されているか" do
       expect(page).to have_content messerge.comment
     end
   end
 end
 
 describe "詳細画面のテスト" do 
   before do
     visit messerge_path(messerge)
   end
   context "表示の確認" do
     it "削除リンクが存在しているか" do
       expect(page).to have_link "削除"
     end
     it "コメントリンクが存在しているか" do
       expect(page).to have_link "コメント"
     end
   end
   context "リンクの遷移先の確認" do
     it "アンサーの遷移先がアンサー画面か" do
       answers_link = find_all('a')[0]
       answers_link.click
       expect(current_path).to eq('/messerges/'+messerge.id.to_s)
     end
   end
   context "messerge削除のテスト" do
     it "messergeの削除" do
       expect{messerge.destroy}.to change{messerge.count}.by(-1)
     end
   end
 end
end