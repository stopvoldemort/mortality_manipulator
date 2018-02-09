class County < ApplicationRecord
  belongs_to :state
  has_one :county_data

  def region
    self.state.region
  end

  def division
    self.state.division
  end


  def string
    "#{self.name}, #{self.state.name}"
  end

end
