class Appointment < ApplicationRecord
  belongs_to :customer
  belongs_to :hairstyle
  # belongs_to :salon

  accepts_nested_attributes_for :customer
end
