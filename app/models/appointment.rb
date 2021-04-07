class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :hairstyle
  # belongs_to :salon

  accepts_nested_attributes_for :user
end
