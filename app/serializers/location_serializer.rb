class LocationSerializer < ActiveModel::Serializer
  attributes :id, :name, :city
  has_many :beaches
end
