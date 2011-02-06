require 'rugex/print'
require 'rugex/regex'

class EmptyRegexError < Exception
  def initialize
    super 'The regex param should not be blank.'
  end
end

module Rugex
  class String
    include Rugex::Print

    def initialize(text, regex_string)
      raise EmptyRegexError if regex_string.empty?
      @text, @regex = text, Regexp.new(regex_string)
      @result = (@text =~ @regex) == nil ? '(no matches)' : print_colored_text
    end

    def to_s; @result; end
  end
end
