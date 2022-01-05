module Client
  class Engine < ::Rails::Engine
    isolate_namespace Client

    initializer "webpacker.proxy" do |app|
      insert_middleware = begin
                            Client.webpacker.config.dev_server.present?
                          rescue
                            nil
                          end
      next unless insert_middleware

      app.middleware.insert_before(
        0, Webpacker::DevServerProxy, # "Webpacker::DevServerProxy" if Rails version < 5
        ssl_verify_none: true,
        webpacker: Client.webpacker
      )
    end

    config.app_middleware.use(
      Rack::Static,
      urls: ["/client-packs"], root: "client/public"
    )

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
