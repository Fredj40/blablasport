class Booking < ApplicationRecord
  after_initialize :set_default_booking_status, if: :new_record?

  belongs_to :user
  belongs_to :event
  has_many :players, :through => :bookings, :source => :user
  validates :user, presence: true
  validates :event, presence: true
  validates :event, uniqueness: { scope: :user, message: "Tu as déjà une réservation pour cet événement" }
  validates :user, uniqueness: { scope: :event, message: "Tu as déjà une réservation pour cet événement" }
  validates :booking_status, presence: true
  validates :booking_status, inclusion: { in: ["En attente de validation", "Acceptée", "Refusée"] }

  private

  def set_default_booking_status
    self.booking_status ||= "En attente de validation"
  end
end
