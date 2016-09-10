class Sheet < ApplicationRecord
  has_and_belongs_to_many :tags

  validates_presence_of :title, :body, :tag_ids

  def self.search(search)
    where("title ILIKE ? ", "%#{search}%")
  end

end
