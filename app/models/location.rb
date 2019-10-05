class Location < ApplicationRecord
    has_many :beaches
    validates_inclusion_of :name, :in => ['Istria', 'Kvarner', 'Dalmatia']
    # validates :name, presence: true
    validates :city, presence: true, uniqueness: true
end
