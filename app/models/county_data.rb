class CountyData < ApplicationRecord
  belongs_to :county

  def state
    self.county.state
  end

  def division
    self.county.state.division
  end

  def region
    self.county.state.region
  end

  def self.mortality_rates_by(filter)
    self.all.group_by(&"#{filter}".to_sym).transform_keys(&:name).transform_values do |s|
      deaths = s.sum(&:deaths)
      population = s.sum(&:population)
      ((deaths.to_f / population.to_f) * 100000).round(2)
    end
  end

end
