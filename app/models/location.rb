class Location < ActiveRecord::Base
    has_many :images, as: :imageable, dependent: :destroy
    accepts_nested_attributes_for :images, reject_if: :all_blank, allow_destroy: true
end
