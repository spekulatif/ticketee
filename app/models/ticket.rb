class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }

  mount_uploader :asset, AssetUploader
end
