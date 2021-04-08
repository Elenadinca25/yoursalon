class Customer < ApplicationRecord
    has_many :appointments
    has_many :hairstyles, through: :appointments
    has_many :stylists, through: :hairstyles
end
