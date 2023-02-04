class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user, presence: true
  validates :event, presence: true
  validates :event, uniqueness: { scope: :user, message: "Tu as déjà une réservation pour cet événement" }
  validates :user, uniqueness: { scope: :event, message: "Tu as déjà une réservation pour cet événement" }
  validates :booking_status, presence: true
  validates :booking_status, inclusion: { in: ["En attente de validation", "Acceptée", "Refusée"] }
end
