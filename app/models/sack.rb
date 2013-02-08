class Sack
  include Mongoid::Document
  field :name
  field :description

  validates_presence_of :name

  has_many :links
  has_many :things
end
