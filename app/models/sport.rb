class Sport < ApplicationRecord
  has_many :favorite_sports, dependent: :destroy
  has_many :users, through: :favorite_sports
  has_many :events, dependent: :destroy
  has_one_attached :photo
end
