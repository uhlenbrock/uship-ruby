require 'spec_helper'

describe Uship, 'Uship Version' do

  subject { Uship }

  it 'returns a version number from a constant' do
    subject::VERSION.must_equal '0.0.1'
  end

end