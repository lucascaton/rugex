module Rugex
  class Regex
    def self.to_regex(string)
      return Regexp.new(string) if (string =~ /^\/.*\/$/) == nil
      return Regexp.new($1)     if (string =~ /^\/(.*)\/$/) != nil
    end
  end
end
