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
    service.json
  end

  def service
    NRELService.new(@zip)
  end

end
