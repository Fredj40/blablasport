class Chatroom < ApplicationRecord
  belongs_to :event
  has_many :messages, dependent: :destroy
  has_many :users, through: :messages
  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy

  validates :event, presence: true
  validates :event, uniqueness: { message: "Cet événement a déjà une chatroom" }

end
