require 'uship/version'
require 'uship/client'
require 'uship/configurable'

module Uship
  class << self
    include Uship::Configurable

    # Alias for Uship::Client.new
    #
    # @return [Uship::Client]
    def new(options={})
      Uship::Client.new(options)
    end

    # Delegate to Uship::Client
    def method_missing(method, *args, &block)
      return super unless new.respond_to?(method)
      new.send(method, *args, &block)
    end

    def respond_to?(method, include_private = false)
      new.respond_to?(method, include_private) || super(method, include_private)
    end

  end
end

Uship.setup