class Stylist < ApplicationRecord
  belongs_to :salon
  has_many :hairstyles
  has_many :appointments, through: :hairstyles
  has_many :users, through: :appointments
end
