class Thing
  include Mongoid::Document
  field :name

  validates_presence_of :name

  belongs_to :sack
  has_many :actions
end
