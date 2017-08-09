class Review < ApplicationRecord
  belongs_to :restaurant #will reject save a review wthout having a resatuarnt
  validates :rating, numericality: true, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }
  validates :content, presence: true
end

it stand sfor shema


# For validating integer http://edgeguides.rubyonrails.org/active_record_validations.html
