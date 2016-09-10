class Sheet < ApplicationRecord
  has_and_belongs_to_many :tags

  belongs_to :user

  validates_presence_of :title, :body, :tag_ids

  def self.search(search)
    where("title ILIKE ? ", "%#{search}%")
  end

  def self.select_owned(current_user_id)
    @ids = [User.find{ |x| x[:email] ==  'admin@test.com' }.id]
    (@ids << current_user_id) if current_user_id
    select{ |i| @ids.include?(i.user_id) }
  end

end
