require 'uship/configurable'
require 'uship/connection'
require 'uship/request'

module Uship
  class API

    include Uship::Configurable
    include Uship::Connection
    include Uship::Request

    # Creates a new API
    def initialize(options={})
      Uship::Configurable.keys.each do |key|
        instance_variable_set :"@#{key}", options[key] || Uship.instance_variable_get(:"@#{key}")
      end
    end

  end
end