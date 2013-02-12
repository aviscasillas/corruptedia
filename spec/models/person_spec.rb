require 'spec_helper'

describe Person do
  it { should validate_presence_of :name }
  it { should have_many :links }
  it { should have_many :roles }
  it { should have_many :actions }
  it { should embed_many :educations}
end