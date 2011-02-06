class EmptyRegexError < Exception
  def initialize
    super 'The regex param should not be blank.'
  end
end
