require 'spec_helper'

describe CorruptCase do
  it 'is invalid without a name' do 
  	corrupt_case = CorruptCase.new
  	corrupt_case.should_not be_valid
  end
end
