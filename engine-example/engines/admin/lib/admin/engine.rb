require 'webpacker'
require 'devise'

module Admin
  class Engine < ::Rails::Engine
    isolate_namespace Admin

    initializer "webpacker.proxy" do |app|
      insert_middleware = begin
                            Admin.webpacker.config.dev_server.present?
                          rescue
                            nil
                          end
      next unless insert_middleware

      app.middleware.insert_before(
        0, Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
        ssl_verify_none: true,
        webpacker: Admin.webpacker
      )
    end

    config.app_middleware.use(
      Rack::Static,
      urls: ["/admin-packs"], root: "engines/admin/public"
    )

    config.to_prepare do
      Devise::SessionsController.layout "admin/sessions"
    end

    config.generators do |g|
      g.javascripts false
      g.stylesheets false
      g.helper false
      g.jbuilder false
      g.test_framework :rspec,
        fixture: false,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: false,
        request_specs: true
    end
  end
end
