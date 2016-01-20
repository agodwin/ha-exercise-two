require 'rest-client'
require 'json'

# exit suite as soon as one example fails
# does not run remaining examples 
RSpec.configure do |c|
  c.fail_fast = true
end


RSpec.describe "Verify data.gov API for Alternative Fuel Stations" do
    API_KEY = 'eUm1wSM1jcqbHeq1Ffns8V6EK2aETzJP9zAuk4lp'
    STATION_NAME = "HYATT AUSTIN"
    STATION_ADDRESS = "208 Barton Springs Rd, Austin, TX, USA, 78704"

    # globals used to pass data between examples
    station_id = data = nil
    
    it "can list charging stations in Austin, TX" do
        url = "https://api.data.gov/nrel/alt-fuel-stations/v1.json?api_key=#{API_KEY}&ev_network=ChargePoint+Network&state=TX"
        response = RestClient.get url
        
        # did we get a positive reply?
        expect(response.code).to eq(200)
        
        data = JSON.parse(response)

        # did we find some charging stations?  
        #puts "TOTAL RESULT: #{data["total_results"]}"
        expect(data["total_results"]).to be > 0
    end

    it "the list for Austin, TX includes the #{STATION_NAME} station" do
        found = false
        for station_hash in data["fuel_stations"] do
            #puts station_hash["station_name"]
            
            if (station_hash["station_name"].eql?(STATION_NAME)) then
                found = true
                station_id = station_hash["id"]
                #puts "STATION ID #{station_id}"
                break
            end
        end
        
        expect(found).to be true                
    end

    it "can use the station id to get information about one station" do
        url = "https://api.data.gov/nrel/alt-fuel-stations/v1/62029.json?api_key=#{API_KEY}"
        response = RestClient.get url
        
        # did we get a positive reply?
        expect(response.code).to eq(200)
        
        data = JSON.parse(response)
        # did we get the data for the right station id?  
        #puts "STATION ID: #{data["alt_fuel_station"]["id"]}"
        expect(data["alt_fuel_station"]["id"]).to eq(station_id)
    end

    it "the record for one station has the address of the station" do
        station__hash = data["alt_fuel_station"] 
        address = "#{station__hash["street_address"]}, #{station__hash["city"]}, #{station__hash["state"]}, USA, #{station__hash["zip"]}"
        
        #puts "ADDRESS IS #{address}"
        
       expect(address).to eq(STATION_ADDRESS)
    end
end
