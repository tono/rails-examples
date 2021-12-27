# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

timestamp = Time.current

areas = [
  {id: 1, name: '北海道',     created_at: timestamp, updated_at: timestamp},
  {id: 2, name: '東北',       created_at: timestamp, updated_at: timestamp},
  {id: 3, name: '関東',       created_at: timestamp, updated_at: timestamp},
  {id: 4, name: '中部',       created_at: timestamp, updated_at: timestamp},
  {id: 5, name: '近畿',       created_at: timestamp, updated_at: timestamp},
  {id: 6, name: '中国',       created_at: timestamp, updated_at: timestamp},
  {id: 7, name: '四国',       created_at: timestamp, updated_at: timestamp},
  {id: 8, name: '九州・沖縄', created_at: timestamp, updated_at: timestamp}
]
Master::Area.insert_all(areas)

prefectures = [
  {id: 1,  area_id: 1, name: '北海道',   created_at: timestamp, updated_at: timestamp},
  {id: 2,  area_id: 2, name: '青森県',   created_at: timestamp, updated_at: timestamp},
  {id: 3,  area_id: 2, name: '岩手県',   created_at: timestamp, updated_at: timestamp},
  {id: 4,  area_id: 2, name: '秋田県',   created_at: timestamp, updated_at: timestamp},
  {id: 5,  area_id: 2, name: '宮城県',   created_at: timestamp, updated_at: timestamp},
  {id: 6,  area_id: 2, name: '山形県',   created_at: timestamp, updated_at: timestamp},
  {id: 7,  area_id: 2, name: '福島県',   created_at: timestamp, updated_at: timestamp},
  {id: 8,  area_id: 3, name: '茨城県',   created_at: timestamp, updated_at: timestamp},
  {id: 9,  area_id: 3, name: '栃木県',   created_at: timestamp, updated_at: timestamp},
  {id: 10, area_id: 3, name: '群馬県',   created_at: timestamp, updated_at: timestamp},
  {id: 11, area_id: 3, name: '埼玉県',   created_at: timestamp, updated_at: timestamp},
  {id: 12, area_id: 3, name: '千葉県',   created_at: timestamp, updated_at: timestamp},
  {id: 13, area_id: 3, name: '東京都',   created_at: timestamp, updated_at: timestamp},
  {id: 14, area_id: 3, name: '神奈川県', created_at: timestamp, updated_at: timestamp},
  {id: 15, area_id: 4, name: '新潟県',   created_at: timestamp, updated_at: timestamp},
  {id: 16, area_id: 4, name: '富山県',   created_at: timestamp, updated_at: timestamp},
  {id: 17, area_id: 4, name: '石川県',   created_at: timestamp, updated_at: timestamp},
  {id: 18, area_id: 4, name: '福井県',   created_at: timestamp, updated_at: timestamp},
  {id: 19, area_id: 4, name: '山梨県',   created_at: timestamp, updated_at: timestamp},
  {id: 20, area_id: 4, name: '長野県',   created_at: timestamp, updated_at: timestamp},
  {id: 21, area_id: 4, name: '岐阜県',   created_at: timestamp, updated_at: timestamp},
  {id: 22, area_id: 4, name: '静岡県',   created_at: timestamp, updated_at: timestamp},
  {id: 23, area_id: 4, name: '愛知県',   created_at: timestamp, updated_at: timestamp},
  {id: 24, area_id: 5, name: '三重県',   created_at: timestamp, updated_at: timestamp},
  {id: 25, area_id: 5, name: '滋賀県',   created_at: timestamp, updated_at: timestamp},
  {id: 26, area_id: 5, name: '京都府',   created_at: timestamp, updated_at: timestamp},
  {id: 27, area_id: 5, name: '大阪府',   created_at: timestamp, updated_at: timestamp},
  {id: 28, area_id: 5, name: '兵庫県',   created_at: timestamp, updated_at: timestamp},
  {id: 29, area_id: 5, name: '奈良県',   created_at: timestamp, updated_at: timestamp},
  {id: 30, area_id: 5, name: '和歌山県', created_at: timestamp, updated_at: timestamp},
  {id: 31, area_id: 6, name: '鳥取県',   created_at: timestamp, updated_at: timestamp},
  {id: 32, area_id: 6, name: '島根県',   created_at: timestamp, updated_at: timestamp},
  {id: 33, area_id: 6, name: '岡山県',   created_at: timestamp, updated_at: timestamp},
  {id: 34, area_id: 6, name: '広島県',   created_at: timestamp, updated_at: timestamp},
  {id: 35, area_id: 6, name: '山口県',   created_at: timestamp, updated_at: timestamp},
  {id: 36, area_id: 7, name: '徳島県',   created_at: timestamp, updated_at: timestamp},
  {id: 37, area_id: 7, name: '香川県',   created_at: timestamp, updated_at: timestamp},
  {id: 38, area_id: 7, name: '愛媛県',   created_at: timestamp, updated_at: timestamp},
  {id: 39, area_id: 7, name: '高知県',   created_at: timestamp, updated_at: timestamp},
  {id: 40, area_id: 8, name: '福岡県',   created_at: timestamp, updated_at: timestamp},
  {id: 41, area_id: 8, name: '佐賀県',   created_at: timestamp, updated_at: timestamp},
  {id: 42, area_id: 8, name: '長崎県',   created_at: timestamp, updated_at: timestamp},
  {id: 43, area_id: 8, name: '熊本県',   created_at: timestamp, updated_at: timestamp},
  {id: 44, area_id: 8, name: '大分県',   created_at: timestamp, updated_at: timestamp},
  {id: 45, area_id: 8, name: '宮崎県',   created_at: timestamp, updated_at: timestamp},
  {id: 46, area_id: 8, name: '鹿児島県', created_at: timestamp, updated_at: timestamp},
  {id: 47, area_id: 8, name: '沖縄県',   created_at: timestamp, updated_at: timestamp}
]
Master::Prefecture.insert_all(prefectures)
