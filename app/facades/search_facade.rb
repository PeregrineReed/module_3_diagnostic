class SearchFacade

  def initialize(params)
    @zip = params[:q]
  end

  def total_results
    binding.pry
    response = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['NREL_KEY']}&location=#{@zip}&fuel_types=LPG,ELEC&access=public&status=E&limit=15")
    json = JSON.parse(response.body, symbolize_names: true)
    json[:total_results]
  end

end
