# Setup ingredients:
# be rake data:import_ingredients

require 'csv'

namespace :data do
    task :import_ingredients => :environment do
        csv_file = File.read Rails.root.join("lib", "tasks", "ingredients.csv")
        csv = CSV.parse csv_file, {headers: true}
        csv.each do |row|
            Ingredient.create!(row.to_hash)
        end
    end
end
