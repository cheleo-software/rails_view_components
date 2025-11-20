module Liponahatso
  class TextComponentPreview < Lookbook::Preview
    def simple
      render Liponahatso::TextComponent.new(text: "Lumelang")
    end

    def headings
    end
  end
end