class Sheet < ApplicationRecord
  has_and_belongs_to_many :tags
end
