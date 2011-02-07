require 'spec_helper'

describe 'Rugex::File' do
  describe '#to_s' do
    it 'checks file with regular expression' do
      output = Rugex::File.new('spec/fixtures/file.txt', 'a[gm].a?')
      output.to_s.should == "Lorem ipsum dolor sit \e[0;31m\e[4mame\e[0;37mt,\nconsectetur m\e[0;31m\e[4magna\e[0;37m aliqua.\n"
    end
  end
end
