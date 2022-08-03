class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :ticks
  # email : string
  # password_digest: string
  # password: string virtual
  # password_confirmation: string virtual
  #
  # has_secure_password
end
