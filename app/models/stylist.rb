class Stylist < ApplicationRecord
  has_many :hairstyles
  has_many :appointments, through: :hairstyles
  has_many :customers, through: :appointments
  belongs_to :salon
end
