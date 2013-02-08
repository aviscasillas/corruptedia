require 'spec_helper'

describe Role do
  it { should validate_presence_of(:name) }
  it { should belong_to :entity }
  it { should belong_to :person }
end
