require 'spec_helper'

describe Uship::Error do
  describe 'response errors' do

    before do
      VCR.insert_cassette 'listing_error'
    end

    after do
      VCR.eject_cassette
    end

    it 'raises a Uship error' do
      assert_raises Uship::Error do
        Uship.listing 1
      end
    end

  end
end
