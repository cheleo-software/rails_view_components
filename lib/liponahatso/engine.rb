module Liponahatso
  class Engine < ::Rails::Engine
    isolate_namespace Liponahatso

    # Load components
    config.autoload_paths += %W[#{config.root}/app/components]

    # Ensure components are loaded
    initializer "liponahatso.load_components" do
      require_dependency "liponahatso/text_component"
    end
  end
end
