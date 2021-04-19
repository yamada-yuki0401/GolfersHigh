# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.create!(
   golfCourseCaption: 'クラブハウスの前に広がる大きな池、サイドに横たわる池など、池を巧みに生かした戦略的なレイアウトが施され、数々のプレーヤーを魅了している。コース、クラブハウスの基本設計思想は直線を排した“Ｒの思想”が貫かれ、曲線の美学をコンセプトにデザインされた美しく独創的なコースが展開する。',
   golfCourseName: 'ローズウッドゴルフクラブ',
   rakuten_id: '280150'
)

Course.create!(
   golfCourseCaption: 'オールドコースは、フェアウェイもゆったりと豪快なショットが楽しめます。ニューコースは改造し距離が長くなり戦略性のあるコースとなりました。また、年間を通じて美しいフェアウェイでプレーしていただくために独自の管理技術「トランジッション方式」を用いて、ベースに暖地型洋芝「ティフトン419」を採用し、秋口からは、寒地型洋芝「ペレニアルライグラス」をオーバーシードしています。通年で最高のターフコンディションでプレーをお楽しみいただけます。
大きな吹き抜けエントランスと見やすいプロショップはご来場者必見です！！',
   golfCourseName: 'ロータリーゴルフ倶楽部',
   rakuten_id: '280151'
)

Course.create!(
   golfCourseCaption: 'フォレスト三木ゴルフ倶楽部は、PGMが保有運営するゴルフ場です。',
   golfCourseName: 'フォレスト三木ゴルフ倶楽部',
   rakuten_id: '280130'
)