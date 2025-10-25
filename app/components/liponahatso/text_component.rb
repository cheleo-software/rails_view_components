# frozen_string_literal: true

module Liponahatso
  class TextComponent < ViewComponent::Base
    def initialize(text_type: :h4)
      @text_type = text_type
    end
  end
end
