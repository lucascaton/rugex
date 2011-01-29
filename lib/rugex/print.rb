module Rugex
  module Print

    private
    def print_colored_text
      colors = {
        :black => "\033[m",
        :blue  => "\033[44m"
      }
      @text.gsub(@regex,"#{colors[:blue]}\\&#{colors[:black]}")
    end
  end
end
