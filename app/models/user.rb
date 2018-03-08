class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :recoverable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable

  has_many :lists
  has_many :ratings
end
