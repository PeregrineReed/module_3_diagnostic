class SearchFacade

  attr_reader :params

  def initialize(params)
    @params = params.values
  end

  def results
    service.get_results(params).each do |data|
      Result.new(data)
    end
  end

  def service
    NrelService.new
  end

end
