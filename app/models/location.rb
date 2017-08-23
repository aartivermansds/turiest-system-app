class Location < ActiveRecord::Base
    has_many :images, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true

    def full_location_address
        "#{self.city} #{self.state} #{self.zipcode}"
    end

    geocoded_by :full_location_address
    after_validation :geocode       


end