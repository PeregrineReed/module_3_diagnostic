require 'rails_helper'

describe 'Station' do
  before :each do
    @data = {
      station_name: 'Station',
      street_address: '123 Street St.',
      fuel_type_code: 'ELEC',
      distance: '0.5',
      access_days_time: '24'
    }
    @station = Station.new(@data)
  end

  it 'exists' do
    expect(@station).to be_a(Station)
  end

  it 'has attributes' do
    expect(@station.name).to eq('Station')
    expect(@station.address).to eq('123 Street St.')
    expect(@station.fuel_types).to eq('ELEC')
    expect(@station.distance).to eq('0.5')
    expect(@station.access_times).to eq('24')
  end
end
