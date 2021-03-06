class Profile < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  def full_name
    self.first_name + " " + self.last_name
  end
end
