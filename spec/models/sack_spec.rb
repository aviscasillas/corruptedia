require 'spec_helper'

describe Sack do
  it { should validate_presence_of(:name) }
end
