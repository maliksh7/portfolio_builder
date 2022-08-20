class Profile < ApplicationRecord
  belongs_to :admin_user
  has_one_attached :avatar
end
