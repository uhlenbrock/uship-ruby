require 'uship/default'

module Uship
  module Configurable

    attr_writer :api_key, :sandbox

    class << self

      def keys
        @keys ||= [
          :api_key,
          :sandbox,
        ]
      end

    end

    def configure
      yield self
    end

    # @return [Boolean]
    def credentials?
      credentials.values.all?
    end

    def sandbox?
      @sandbox == true
    end

    def reset!
      Uship::Configurable.keys.each do |key|
        instance_variable_set :"@#{key}", Uship::Default.options[key]
      end
      self
    end
    alias setup reset!

    private

      # @return [Hash]
      def credentials
        { api_key: @api_key }
      end

      # @return [String]
      def endpoint
        if sandbox?
          'https://apistaging.uship.com/v2/'
        else
          'https://api.uship.com/v2/'
        end
      end

  end
end