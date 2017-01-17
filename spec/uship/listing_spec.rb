require 'spec_helper'

describe Uship::Client::Listing do
  describe 'creating a listing' do

    before do
      VCR.insert_cassette 'listing_create'
    end

    after do
      VCR.eject_cassette
    end

    let(:listing) do
      params = {
        service_types: ['EnclosedTransport'],
        title: 'Shipping a couch',
        description: 'Go west young man'
      }
      Uship.create_listing(params)
    end

    it 'returns a success message' do
      puts listing.response
    end

  end
end
