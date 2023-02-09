class Review < ApplicationRecord
  belongs_to :event
  belongs_to :user
  validates :event, presence: true
  validates :user, presence: true
  validates :rating, presence: true
  validates :rating, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :comment, presence: true
  validates :comment, length: { minimum: 10 }
  validates :comment, length: { maximum: 200 }
  validates :comment, uniqueness: { scope: :user, message: "Tu as déjà publié un commentaire" }
  validates :user, uniqueness: { scope: :event, message: "Tu as déjà publié un commentaire" }
end
