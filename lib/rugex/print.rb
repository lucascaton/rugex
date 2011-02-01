module Rugex
  module Print

    private
    def print_colored_text
      colors = {
        :white => "\033[0;37m",
        :red   => "\033[0;31m"
      }
      @text.gsub(@regex,"#{colors[:red]}\\&#{colors[:white]}")
    end
  end
end
