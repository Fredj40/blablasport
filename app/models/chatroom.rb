class Chatroom < ApplicationRecord
  belongs_to :event
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages
  validates :event, presence: true
  validates :event, uniqueness: { message: "Cet événement a déjà une chatroom" }

end
