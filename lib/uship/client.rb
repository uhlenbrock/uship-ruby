require 'uship/api'

module Uship
  class Client < API

    # Require client method modules after initializing the Client class in
    # order to avoid a superclass mismatch error, allowing those modules to be
    # Client-namespaced.
    require 'uship/client/listing'

    include Uship::Client::Listing

  end
end