class Role
  include Mongoid::Document
  field :name

  validates_presence_of :name

  belongs_to :entity
  belongs_to :person
end
