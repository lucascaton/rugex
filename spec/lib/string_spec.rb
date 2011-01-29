require 'spec_helper'

describe 'Rugex::String' do
  describe '#to_s' do
    context 'successful' do
      it 'checks text with regular expression' do
        output = Rugex::String.new('John Doe', 'ohn')
        output.to_s.should == "J\e[44mohn\e[m Doe"
      end

      it 'checks text with other regular expression' do
        output = Rugex::String.new('John Doe', 'John D')
        output.to_s.should == "\e[44mJohn D\e[moe"
      end
    end

    context 'unsuccessful' do
      it 'checks text with regular expression' do
        output = Rugex::String.new('John Doe', 'Johnny')
        output.to_s.should == "(no matches)"
      end

      it 'checks text with other regular expression' do
        output = Rugex::String.new('John Doe', 'john doe')
        output.to_s.should == "(no matches)"
      end

      it 'raise a exception when the regular expression is empty' do
        expect {
          Rugex::String.new('John Doe', '')
        }.to raise_error EmptyRegexError
      end
    end
  end
end
