require 'spec_helper'
describe Corrupt do
  it 'is invalid without a name' do 
  	corrupt = Corrupt.new
  	corrupt.should_not be_valid
  end
end