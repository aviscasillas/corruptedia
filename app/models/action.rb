class Action
  include Mongoid::Document
  field :name

  validates_presence_of :name

  belongs_to :thing
  belongs_to :person
end
