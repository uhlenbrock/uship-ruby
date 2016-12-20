module Uship
  class Error < StandardError

    attr_reader :code

    def initialize(code, message)
      @code = code
      @message = message
    end

    def to_s
      "Uship::Error: (#{@code}) #{@message}"
    end

  end
end