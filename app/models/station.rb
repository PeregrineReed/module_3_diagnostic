class Station
  # &fuel_type=LPG,ELEC&access_code=public

  attr_reader :access,
              :name,
              :address,
              :fuel_types,
              :distance,
              :access_times

  def initialize(data)
    @access = data['access_code']
    @name = data['station_name']
    @address = data['street_address']
    @fuel_types = data['fuel_type_code']
    @distance = "latitude #{data['latitude']}, longitude #{data['longitude']}"
    @access_times = data['access_days_time']
  end

end
