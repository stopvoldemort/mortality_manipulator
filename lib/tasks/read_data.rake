require 'csv'

namespace :data do

  desc "Reads in data"
  task :read => :environment do
    CSV.foreach('app/assets/lung_cancer_by_county_2007_2016.csv', :headers => true) do |row|
      name = row["County"].split(" County")[0]
      state = row["County"].split(", ")[1]
      CountyData.create(name: name, state: state, deaths: row["Deaths"], population: row["Population"])
    end
  end

end
