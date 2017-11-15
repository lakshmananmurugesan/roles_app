class User < ActiveRecord::Base
  validates :first_name, presence: true,
                    length: { minimum: 2 }
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  has_attached_file :profile_pic, styles: {
    thumb: '150x150>',
  }

  validates_attachment_presence :profile_pic
  validates_attachment_size :profile_pic, :less_than => 5.megabytes
  validates_attachment_content_type :profile_pic, :content_type => ['image/jpeg', 'image/png']

  belongs_to :role
  has_many :user_metum, dependent: :destroy
  accepts_nested_attributes_for :user_metum, reject_if: :all_blank, allow_destroy: true
end
