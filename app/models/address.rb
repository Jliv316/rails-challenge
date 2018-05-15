class Adress < ApplicationRecord
  validates :description, :street, :city, :state, :zip, presence: true
end