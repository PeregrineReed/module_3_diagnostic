class SearchFacade

  attr_reader :search

  def initialize(params)
    @search = params[:q]
  end

  def stations
    stations = []
    service.get_results(search).each do |data|
      station = Station.new(data)
      stations << station
    end
    stations
  end

  def service
    NrelService.new
  end

end
