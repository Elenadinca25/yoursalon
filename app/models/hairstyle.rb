class Hairstyle < ApplicationRecord
  belongs_to :stylist
  has_many :appointments
end
