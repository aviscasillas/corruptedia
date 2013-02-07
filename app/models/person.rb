class Person
  include Mongoid::Document
  field :name
  field :description

  validates :name, presence: true

  has_many :links
end
