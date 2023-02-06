# frozen_string_literal: true

require_relative "time/version"

module Local
  module Time
    mattr_accessor(:default_time_format) { "%B %e, %Y %l:%M%P" }
    mattr_accessor(:default_date_format) { "%B %e, %Y" }

    class Error < StandardError; end
    # Your code goes here...
  end
end
