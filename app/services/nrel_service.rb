class NRELService
  def initialize(zip)
    @zip = zip
  end

  def json
    response = conn.get("?api_key=#{ENV['NREL_KEY']}&location=#{@zip}&fuel_type=LPG,ELEC&access=public&status=E&limit=15")
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

end
