class Event < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  # has_one_attached :photo

  validates :title, presence: true
  validates :description, presence: true
  validates :location, presence: true
  validates :date, presence: true
  validates :time, presence: true
  validates :price, presence: true
  validates :sport, presence: true
  validates :user, presence: true

  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_sport_and_location,
    against: [ :sport, :location ],
    using: {
      tsearch: { prefix: true }
    }
end
