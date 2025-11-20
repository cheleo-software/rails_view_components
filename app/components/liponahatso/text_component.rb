# frozen_string_literal: true

module Liponahatso
  class TextComponent < Liponahatso::ApplicationComponent
    option :text                   # required
    option :text_type, default: -> { :p }
    option :variant, default: -> { :body }
    option :html_attributes, optional: true, default: -> { {} }


    private

    def default_attributes
      {
        class: [ "font-sans", tailwind_class ].join(" ")
      }
    end

    def tailwind_class
      # Example mapping (customizable)
      {
        h1: "text-4xl xl:text-6xl font-bold leading-8",
        h2: "text-2xl xl:text-3xl font-bold leading-6",
        h3: "text-xl xl:text-2xl font-semibold",
        h4: "text-lg xl:text-xl font-semibold",
        p:  "text-base leading-relaxed",
        span: "text-sm"
      }[text_type.to_sym] || "text-base"
    end
  end
end
