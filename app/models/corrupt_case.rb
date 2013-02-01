class CorruptCase
  include Mongoid::Document
  field :name
  field :description

  validates :name, presence: true
end
