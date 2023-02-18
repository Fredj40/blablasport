class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom, dependent: :destroy
  validates :user, presence: true
  validates :chatroom, presence: true
  validates :content, presence: true
  validates :content, length: { minimum: 1 }
  validates :content, length: { maximum: 500 }
end
