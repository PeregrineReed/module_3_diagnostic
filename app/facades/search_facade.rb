class SearchFacade

  attr_reader :search

  def initialize(params)
    @search = params[:q]
  end

  def results
    service.get_results(search).each do |data|
      Result.new(data)
    end
  end

  def service
    NrelService.new
  end

end
