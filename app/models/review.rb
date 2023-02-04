class Review < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :event, presence: true
  validates :user, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :content, presence: true
  validates :content, length: { minimum: 10 }
  validates :content, length: { maximum: 500 }
  validates :content, uniqueness: { scope: :user, message: "Tu as déjà publié un commentaire" }
  validates :user, uniqueness: { scope: :event, message: "Tu as déjà publié un commentaire" }
end
