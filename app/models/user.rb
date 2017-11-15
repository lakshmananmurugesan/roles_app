class User < ActiveRecord::Base
  validates :first_name, presence: true,
                    length: { minimum: 2 }
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  belongs_to :role
end
