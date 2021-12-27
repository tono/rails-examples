class Master::Area < ApplicationRecord
  has_many :prefectures, class_name: 'Master::Prefecture', foreign_key: 'area_id'
end
