require 'rails_helper'

describe 'NRELService' do
  it 'exists' do
    zip = 80206
    ns = NRELService.new(zip)

    expect(ns).to be_a(NRELService)
  end
end
