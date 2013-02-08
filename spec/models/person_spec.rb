require 'spec_helper'

describe Person do
  it { should validate_presence_of(:name) }
  it { should have_many(:links) }
  it { should have_many(:entities)}
  it { should have_one(:role) }
  it { should have_and_belong_to_many(:facts) }
end