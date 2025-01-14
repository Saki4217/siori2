class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

        mount_uploader :image, ImageUploader

  has_many :tweets, dependent: :destroy
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }
  
end
