class Beach < ApplicationRecord
    belongs_to :location, required: false
    validates :name, :summary, presence: true
    validates_inclusion_of :region, :in => ['Istria', 'Kvarner', 'Dalmatia']
end
