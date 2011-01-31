# encoding: utf-8

# Rugex - A CLI to test regular expressions on Ruby
# Author: Lucas Caton - lucascaton at gmail

require 'rubygems'
require 'thor'
require 'rugex/string'

module Rugex
  class Base < Thor
    ARGV.unshift 'string' if (ARGV[0] =~ /-./) == nil

    desc '<text> <regex>', 'show the match text using regular expression'
    def string(text, regex_string)
      puts Rugex::String.new text, regex_string
    end
  end
end

Rugex::Base.start
