class Location < ApplicationRecord
    has_many :beaches

    validates :name, presence: true
    validates :city, uniqueness: true, presence: true
end
