class Region < ApplicationRecord
  has_many :states
  has_many :counties, through: :states

  def county_datas
    self.counties.map(&:county_data)
  end

end
