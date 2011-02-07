require 'rugex/print'

module Rugex
  class File
    include Rugex::Print

    def initialize(file_path, regex_string)
      raise EmptyRegexError if regex_string.empty?

      @regex = Regexp.new(regex_string)

      file = ::File.open(file_path)
      @result = file.lines.inject '' do |colored_text, line|
        @text = line
        colored_text << colorize_text
      end
      file.close
    end

    def to_s; @result; end
  end
end
