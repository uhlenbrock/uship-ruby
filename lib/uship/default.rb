require 'faraday_middleware'

module Uship
  module Default

    SANDBOX = true unless defined? SANDBOX

    class << self

      def options
        Hash[Uship::Configurable.keys.map{|key| [key, send(key)]}]
      end

      def api_key
        ENV['USHIP_API_KEY']
      end

      def sandbox
        SANDBOX
      end

    end

  end
end