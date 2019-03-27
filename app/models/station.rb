class Station

  def initialize(data)
    @name = data['station_name']
    @address = data['street_address']
    @fuel_types = data['fuel_type_code']
    @distance = "latitude #{data['latitude']}, longitude #{data['longitude']}"
    @access_times = data['access_days_time']
  end

end
