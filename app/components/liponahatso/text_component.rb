# frozen_string_literal: true

module Liponahatso
  class TextComponent < ApplicationComponent
    def initialize(text_type: :h4)
      @text_type = text_type
    end
  end
end
