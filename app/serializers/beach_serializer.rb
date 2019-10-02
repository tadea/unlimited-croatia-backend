class BeachSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :region, :location_id
end
