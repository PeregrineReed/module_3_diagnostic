class NrelService

  def get_json(params)
    response = conn.get("v1.json?api_key=#{ENV['NREL_API_KEY']}&zip_code=#{params}&format=JSON&fuel_type=LPG,ELEC&access_code=public")
    JSON.parse(response.body)
  end

  def get_results(params)
    get_json(params)
  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations/') do |faraday|
      # faraday.headers['X-Api-Key'] = ENV['NREL_API_KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
