class Hairstyle < ApplicationRecord
  has_many :appointments
  belongs_to :stylist
end
