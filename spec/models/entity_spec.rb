require 'spec_helper'

describe Entity do
  it { should validate_presence_of(:name) }
end
