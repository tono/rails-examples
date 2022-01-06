module Case1
  class Engine < ::Rails::Engine
    isolate_namespace Case1

    config.generators do |g|
      g.javascripts false
      g.stylesheets false
      g.helper false
      g.jbuilder false
      g.test_framework nil
    end
  end
end
