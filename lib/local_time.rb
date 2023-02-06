module LocalTime
  mattr_accessor(:default_time_format) { "%B %e, %Y %l:%M%P" }
  mattr_accessor(:default_date_format) { "%B %e, %Y" }

  class Engine < ::Rails::Engine
    initializer "local_time" do |app|
      ActionView::Base.send :include, LocalTime::LocalTimeHelper
    end
  end
end
