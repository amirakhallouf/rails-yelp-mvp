class Restaurant < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"], allow_nil: false }
  has_many :reviews, dependent: :destroy #whenever we delete a reatsurant we delete all reviews
end
