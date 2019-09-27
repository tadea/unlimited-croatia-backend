class Location < ApplicationRecord
    has_many :beaches

    validates :name, :city, presence: true
end
