class Event < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :chatrooms, dependent: :destroy

  # validates :title, presence: true, length: { maximum: 20 }
  validates :date, presence: true
  validates :time, presence: true
  validates :price, presence: true
  validates :sport, presence: true
  validates :user, presence: true
  validates :players_number, presence: true, inclusion: { in: 1..30 }
  validates :address, presence: true
  validates :duration, presence: true, inclusion: { in: 1..120 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :global_search,
  against:

  [ :description, :title, :address ],
  associated_against: {
    sport: [:sport_name]
  },
  using: {
    tsearch: { prefix: true }
  }

end
