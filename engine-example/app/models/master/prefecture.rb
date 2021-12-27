class Master::Prefecture < ApplicationRecord
  belongs_to :area, class_name: 'Master::Area', foreign_key: 'area_id'
end
