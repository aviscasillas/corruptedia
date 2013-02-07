require 'spec_helper'

describe Fact do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
end
