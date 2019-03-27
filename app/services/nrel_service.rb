class NrelService

  def get_json(params)
    conn.get("/v1.json?#{params}")
  end

  def get_results(params)

  end

  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/alt-fuel-stations') do |faraday|
      faraday.headers['X-Api-Key'] = ENV['NREL_API_KEY']
      faraday.default_adapter
    end
  end
end
