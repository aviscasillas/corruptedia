class Person
  include Mongoid::Document
  field :name
  field :description

  validates :name, presence: true

  has_many :links
  has_many :roles
  has_and_belongs_to_many :facts
end
