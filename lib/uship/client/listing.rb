module Uship
  class Client
    module Listing

      # Get listing
      def listing(id)
        get "listings/#{id}"
      end

    end
  end
end