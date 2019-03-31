class SearchFacade

  def initialize(params)
    @zip = params
  end

  def total_results
    response[:total_results]
  end

  def stations
    response[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

  def response
    conn = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_KEY']}&location=#{@zip}&fuel_type=LPG,ELEC&access=public&status=E&limit=15")
    JSON.parse(conn.body, symbolize_names: true)
  end

  def service
    NRELService.new(@zip)
  end

end
