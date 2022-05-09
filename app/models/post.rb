class Post < ApplicationRecord
  has_many :punches
  has_many :comments
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_punchable
  
  belongs_to :user
  mount_uploader :file, FileUploader
end
