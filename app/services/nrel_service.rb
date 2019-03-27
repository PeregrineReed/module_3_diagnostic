class NrelService

  def get_json(params)
    response = conn.get("v1.json?api_key=#{ENV['NREL_API_KEY']}&zip=#{params}&format=JSON")
    # binding.pry
    JSON.parse(response.body)
  end

  def get_results(params)
    get_json(params)['fuel_stations']
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/') do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end
end
