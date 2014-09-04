class Project < ActiveRecord::Base
  scope :viewable_by, ->(user) do
    joins(:permissions).where(permissions: { action: "view", user_id: user.id })
  end
  
  has_many :tickets, dependent: :destroy
  has_many :permissions, as: :thing
  
  validates :name, presence: true

end
