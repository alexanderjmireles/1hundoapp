class Post < ActiveRecord::Base
  acts_as_votable

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :user_id, presence: true
  validates :caption, length: { minimum: 3, maximum: 300 }
  attachment :image
  # has_attached_file :image, styles: { :medium => "640x" }
  # validates :image, presence: true
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end