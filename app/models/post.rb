class Post < ApplicationRecord
  has_many :punches
  extend FriendlyId
  friendly_id :title, use: :slugged
  acts_as_punchable
  
  belongs_to :user
  mount_uploader :file, FileUploader
end
