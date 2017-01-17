module Uship
  class Client
    module Listing
      SERVICE_TYPES = %w(OpenTransport EnclosedTransport Driveaway Other)

      # Get listing
      def listing(id)
        get "listings/#{id}"
      end

      # Create listing
      # Options: title, description, status, service_types
      # https://developer.uship.com/docs/read/apis/listings/Create_Listing
      def create_listing(options = {})
        defaults = { status: 'Saved' }
        post 'listings', defaults.merge(options)
      end

    end
  end
end
