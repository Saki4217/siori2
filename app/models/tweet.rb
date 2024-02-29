class Tweet < ApplicationRecord
    belongs_to :user 
    has_many :tweet_ingredients, dependent: :destroy
    accepts_nested_attributes_for :tweet_ingredients, allow_destroy: true
    mount_uploader :image, ImageUploader
end
