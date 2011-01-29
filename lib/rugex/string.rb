require 'lib/rugex/print'
require 'lib/rugex/regex'

class EmptyRegexError < Exception; end

module Rugex
  class String
    include Rugex::Print

    def initialize(text, regex_string)
      raise EmptyRegexError if regex_string.empty?
      @text, @regex = text, Rugex::Regex.to_regex(regex_string)
      @result = (@text =~ @regex) == nil ? '(no matches)' : print_colored_text
    end

    def to_s; @result; end
  end
end
