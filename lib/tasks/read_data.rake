require 'csv'

namespace :data do

  desc "Creates states, regions, and divisions"
  task :states_and_regions => :environment do

    CSV.foreach('app/assets/state_to_region.csv', :headers => true) do |row|
      state = State.new(name: row["name"], abbreviation: row["abbreviation"])
      region = Region.find_or_create_by(name: row["region"])
      division = Division.find_or_create_by(name: row["division"])
      region.states << state
      division.states << state
      state.save
    end

  end

  desc "Reads in data"
  task :read => :environment do

    CSV.foreach('app/assets/lung_cancer_by_county_2007_2016.csv', :headers => true) do |row|
      next if row["Population"] == "Missing" || row["Deaths"] == "Missing"
      state_abbreviation = row["County"].split(", ")[1]
      state = State.find_by(abbreviation: state_abbreviation)
      county_name = row["County"].split(" County")[0]
      county = County.find_or_create_by(name: county_name, state_id: state.id)
      CountyData.create(deaths: row["Deaths"], population: row["Population"], county_id: county.id)
    end


  end

end
