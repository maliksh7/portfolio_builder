class Portfolio < ApplicationRecord
  belongs_to :admin_user
  has_many_attached :images
end
