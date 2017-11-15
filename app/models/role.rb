class Role < ActiveRecord::Base
  validates :name, presence: true,
                    length: { minimum: 2 }

  has_one :user

  scope :active_roles, -> { where(visibility: true) }
end
