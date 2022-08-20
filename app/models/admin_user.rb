class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_one :about
  has_one :resume
  has_one :portfolio
  has_one :service
  has_one :testimonial

end
