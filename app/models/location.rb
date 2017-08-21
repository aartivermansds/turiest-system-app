class Location < ActiveRecord::Base
    has_many :images, as: :imageable
end
