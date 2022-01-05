module Client
  module ApplicationHelper
    include ::Webpacker::Helper

    def current_webpacker_instance
      Client.webpacker
    end
  end
end
