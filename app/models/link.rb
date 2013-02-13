class Link
  include Mongoid::Document
  field :url

  attr_accessible :url, :parent_model, :parent_id
  attr_accessor :parent_model, :parent_id

  belongs_to :person
  belongs_to :entity

  validates :url, presence: true

end
