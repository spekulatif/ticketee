class Ticket < ActiveRecord::Base
  belongs_to :user
  belongs_to :project

  has_many :assets
  accepts_nested_attributes_for :assets
  
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }

end
