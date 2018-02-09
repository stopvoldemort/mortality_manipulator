class State < ApplicationRecord
  belongs_to :division
  belongs_to :region
  has_many :counties
  has_many :county_datas, through: :counties
end
