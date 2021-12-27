class Store < ApplicationRecord
  belongs_to :prefecture, class_name: 'Master::Prefecture', foreign_key: 'prefecture_id'
end
