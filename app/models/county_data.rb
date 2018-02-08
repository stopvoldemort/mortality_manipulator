class CountyData < ApplicationRecord

  def self.county_rates
    county_rates = self.all.each_with_object({}) do |data, agg|
      agg[data.county_string] = data.county_rate
    end
    county_rates
  end

  def county_string
    "#{self.name}, #{self.state}"
  end

  def county_rate
    ((self.deaths.to_f / self.population.to_f) * 100000).round(2)
  end

  def self.state_population(state)
    self.all.select{|c|c.state == state}.map(&:population).reduce(&:+)
  end

  

  def self.filter_rates(filter)
    self.all.group_by(&"#{filter}".to_sym).transform_values do |s|
      deaths = s.reduce(0) { |agg, c| agg + c.deaths }
      population = s.reduce(0) { |agg, c| agg + c.population }
      ((deaths.to_f / population.to_f) * 100000).round(2)
    end
  end



end
