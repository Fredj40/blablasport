class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom

  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy

  validates :user, presence: true
  validates :chatroom, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 1 }
  validates :content, length: { maximum: 500 }

  include PublicActivity::Model
  tracked only: :create
end
