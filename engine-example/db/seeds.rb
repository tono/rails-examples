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
