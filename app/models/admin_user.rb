class AdminUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable
  has_one :profile
  has_one :about
  has_many :resume
  has_one :portfolio
  has_many :service
  has_many :testimonial

end
