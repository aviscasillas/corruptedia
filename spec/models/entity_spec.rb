require 'spec_helper'

describe Entity do
  it { should validate_presence_of(:name) }
  it { should have_many(:links) }
  it { should have_many(:roles)}
end
