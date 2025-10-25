# frozen_string_literal: true

# Ensure Liponahatso components are loaded
Rails.application.config.to_prepare do
  # Load all components from the engine
  Dir.glob(Liponahatso::Engine.root.join("app", "components", "liponahatso", "*.rb")).each do |component_file|
    require_dependency component_file
  end
end
