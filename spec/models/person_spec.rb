require 'spec_helper'
describe Person do
  it 'is invalid without a name' do 
  	person = Person.new
  	person.should_not be_valid
  end
end