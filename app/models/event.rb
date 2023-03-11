class Event < ApplicationRecord
  belongs_to :user
  belongs_to :sport
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
  has_many :messages, through: :chatrooms, dependent: :destroy
  has_many :activities, as: :trackable, class_name: 'PublicActivity::Activity', dependent: :destroy
  has_many :activities, as: :owner, class_name: 'PublicActivity::Activity', dependent: :destroy

  validates :date, presence: true
  validates :time, presence: true
  validates :price, presence: true, if: :validation_price_check
  validates :level, presence: true
  validates :players_number, presence: true, inclusion: { in: 1..30 }
  validates :address, presence: true
  validates :duration, presence: true

  include PublicActivity::Model
  tracked only: [:create, :edit, :update, :destroy]

  def future?
    date > Date.today
  end

  def past?
    date < Date.today
  end

  # def fully_booked?
  #   players_number == players.count
  # end

  def to_s
    title
  end

  def validation_price_check
    gratuit == false
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :global_search,
  against: [ :description, :title, :address ], associated_against: { sport: [:sport_name] }, using: { tsearch: { prefix: true } }

end
