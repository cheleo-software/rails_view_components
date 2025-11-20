module Liponahatso
  class Engine < ::Rails::Engine
    isolate_namespace Liponahatso

    # Load components
    config.autoload_paths += %W[#{config.root}/app/components]

    # Ensure components are loaded
    initializer "liponahatso.load_components" do
      require_dependency "liponahatso/application_component"
      require_dependency "liponahatso/text_component"
    end

    # Expose engine assets to host application
    initializer "liponahatso.assets" do |app|
      # Add engine's asset paths
      app.config.assets.paths << config.root.join("app/assets/stylesheets")
      app.config.assets.paths << config.root.join("app/assets/tailwind")
      app.config.assets.paths << config.root.join("app/components")
    end

    # Precompile engine assets
    initializer "liponahatso.assets.precompile" do |app|
      app.config.assets.precompile += %w[liponahatso/application.css]
      app.config.assets.precompile += %w[liponahatso/engine.css]
    end
  end
end
