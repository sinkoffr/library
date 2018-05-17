class Book < ApplicationRecord
  validates :title, :author, :description, presence: true
  mount_uploader :cover_art, CoverartUploader
  belongs_to :user
  
end
