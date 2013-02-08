class Fact
  include Mongoid::Document
  field :name
  field :description

  validates :name, presence: true
  validates :description, presence: true

  has_many :links
  belongs_to :sack
  has_and_belongs_to_many :people
end
