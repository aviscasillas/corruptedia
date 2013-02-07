class Link
  include Mongoid::Document
  field :url

  validates :url, presence: true
end
