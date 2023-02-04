class FavoriteSport < ApplicationRecord
  belongs_to :sport
  belongs_to :user
  validates :sport, presence: true
  validates :user, presence: true
  validates :sport, uniqueness: { scope: :user, message: "Tu as déjà ce sport en favoris" }
end
