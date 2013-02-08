require 'spec_helper'

describe Thing do
  it { should validate_presence_of :name }
  it { should belong_to  :sack }
  it { should have_many :actions }
end
