class Link
  include Mongoid::Document
  field :url

  validates :url, presence: true

  belongs_to :binding, polymorphic: true
end
