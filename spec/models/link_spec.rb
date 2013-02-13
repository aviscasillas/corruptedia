require 'spec_helper'

describe Link do
  it { should validate_presence_of :url }
  it { should belong_to(:person) }
  it { should belong_to(:entity) }
end
