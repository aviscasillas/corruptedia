class Fact
  include Mongoid::Document
  field :name
  field :description

  validates :name, presence: true
  validates :description, presence: true
end
