# Test API Key
ENV['USHIP_API_KEY'] = 'gjw9g86h3e87ypqha4y428um'

require 'uship'
require 'minitest/autorun'
require 'minispec-metadata'
require 'webmock'
require 'vcr'
require 'minitest-vcr'
require 'faraday'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
MinitestVcr::Spec.configure!

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
end