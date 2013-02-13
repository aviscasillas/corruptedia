class Person
  include Mongoid::Document

  field :name
  field :description

  validates :name, presence: true

  has_many :links
  has_many :roles
  has_many :actions
  embeds_many :educations
end
