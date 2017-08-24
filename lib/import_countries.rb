require 'rest_client'
class ImportCountries
  def self.geo_locations
    response = RestClient.get 'https://restcountries-v1.p.mashape.com/all', {'X-Mashape-Key': 'OmBj8EnoWwmshWTYFZJrYfZ3IkGnp1ES73ujsnYP43a9nN9uS4', accept: :json}
    countries = JSON.parse(response.body)
    t = 0
    countries.each do | each_country |
      t += 1
      puts "------------------------#{t}"
      Country.create(name: each_country["name"])
    end
  end
end

# ImportCountries.geo_locations