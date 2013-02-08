require 'spec_helper'

describe Action do
  it { should validate_presence_of(:name) }
  it { should belong_to :thing }
  it { should belong_to :person }
end
