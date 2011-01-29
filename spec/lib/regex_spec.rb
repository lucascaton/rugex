require 'spec_helper'

describe 'Rugex::Regex' do
  describe '.to_regex' do
    context 'receiving a string without slashes' do
      it 'returns a Regexp object' do
        regex = Rugex::Regex.to_regex '\d{4}\d{2}-\d{2}'
        regex.should == /\d{4}\d{2}-\d{2}/
      end

      it 'returns a empty Regexp object' do
        regex = Rugex::Regex.to_regex ''
        regex.should == //
      end
    end

    context 'receiving a string with slashes' do
      it 'returns a Regexp object' do
        regex = Rugex::Regex.to_regex '/\d{4}\d{2}-\d{2}/'
        regex.should == /\d{4}\d{2}-\d{2}/
      end

      it 'returns a empty Regexp object' do
        regex = Rugex::Regex.to_regex '//'
        regex.should == //
      end
    end
  end
end
