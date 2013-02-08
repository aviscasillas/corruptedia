require 'spec_helper'

describe Fact do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should have_many(:links) }
  it { should belong_to(:sack) }
  it { should have_and_belong_to_many(:people) }
end
