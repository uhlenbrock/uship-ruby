require 'uship/response/raise_error_on_failed_request'

module Uship
  module Connection

    private

      def connection(options = {})
        headers = {'Accept' => 'application/json', 'Content-Type' => 'application/json'}
        @connection ||= Faraday.new endpoint, headers: headers do |conn|
          conn.request :oauth2, @api_key, token_type: 'bearer'
          conn.request :json

          conn.response :json
          conn.response :mashify

          conn.use Uship::Response::RaiseErrorOnFailedRequest, Uship::Error

          conn.adapter Faraday.default_adapter
        end
      end

  end
end